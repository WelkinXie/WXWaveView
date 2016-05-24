//
//  WXWaveView.m
//
//  Created by WelkinXie on 16/4/20.
//  Copyright © 2016年 WelkinXie. All rights reserved.
//
//  Github: https://github.com/WelkinXie/WXWaveView
//

#import "WXWaveView.h"

@interface WXWaveView ()

@property (weak, nonatomic) UIView *lowerView;
@property (assign, nonatomic) CGFloat waveWidth;
@property (assign, nonatomic) CGFloat waveHeight;
@property (assign, nonatomic) CGFloat offsetX;
@property (strong, nonatomic) CADisplayLink *waveDisplayLink;
@property (strong, nonatomic) CAShapeLayer *waveShapeLayer;

@end

@implementation WXWaveView

+ (instancetype)addToView:(UIView *)view withFrame:(CGRect)frame {
    WXWaveView *waveView = [[self alloc] initWithFrame:frame];
    waveView.lowerView = view;
    [view addSubview:waveView];
    return waveView;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self basicSetup];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if ([super initWithCoder:aDecoder]) {
        [self basicSetup];
    }
    return self;
}

- (void)basicSetup {
    _waveHeight = self.frame.size.height / 2;
    _waveWidth = self.frame.size.width;
    _waveSpeed = 5.f;
    _waveAmplitude = 5.f;
    _waveTime = 1.f;
    _waveColor = [UIColor whiteColor];
}

- (void)wave {
    
    if (self.waveShapeLayer.path) {
        return;
    }
    self.waveShapeLayer = [CAShapeLayer layer];
    self.waveShapeLayer.fillColor = self.waveColor.CGColor;
    
    [self.layer addSublayer:self.waveShapeLayer];
    
    self.waveDisplayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(getCurrentWave)];
    [self.waveDisplayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    
    if (self.waveTime <= 0.f) {
        return;
    }
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(self.waveTime * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self stop];
    });
}

- (void)getCurrentWave {
    
    self.offsetX += self.waveSpeed;
    
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathMoveToPoint(path, NULL, 0, self.waveHeight);
    
    CGFloat y = 0.f;
    for (float x = 0.f; x <= self.waveWidth ; x++) {
        y = self.waveAmplitude * sin((360 / self.waveWidth) * (x * M_PI / 180) - self.offsetX * M_PI / 180) + self.waveHeight;
        CGPathAddLineToPoint(path, NULL, x, y);
    }
    
    CGPathAddLineToPoint(path, NULL, self.waveWidth, self.frame.size.height);
    CGPathAddLineToPoint(path, NULL, 0, self.frame.size.height);
    CGPathCloseSubpath(path);
    
    self.waveShapeLayer.path = path;
    
    CGPathRelease(path);
}

- (void)stop {
    [UIView animateWithDuration:1.f animations:^{
        self.alpha = 0.f;
    } completion:^(BOOL finished) {
        [self.waveDisplayLink invalidate];
        self.waveDisplayLink = nil;
        self.waveShapeLayer.path = nil;
        self.alpha = 1.f;
    }];
    
}

- (void)layoutSubviews {
    if (!self.lowerView) {
        return;
    }
    self.waveWidth = CGRectGetWidth(self.lowerView.frame);
}

@end
