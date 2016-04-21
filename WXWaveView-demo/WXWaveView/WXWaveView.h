//
//  WXWaveView.h
//
//  Created by WelkinXie on 16/4/20.
//  Copyright © 2016年 WelkinXie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WXWaveView : UIView

@property (assign, nonatomic) CGFloat waveSpeed;
@property (assign, nonatomic) CGFloat waveAmplitude;
@property (assign, nonatomic) NSTimeInterval waveTime;
@property (strong, nonatomic) UIColor *waveColor;

- (void)wave;
- (void)stop;

@end



