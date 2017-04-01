//
//  WXWeakObject.h
//  WXWaveView-demo
//
//  Created by cp on 2017/4/1.
//  Copyright © 2017年 Welkin. All rights reserved.
//
//  Github: https://github.com/WelkinXie/WXWaveView
//

#import <Foundation/Foundation.h>

@interface WXWeakObject : NSObject

@property (weak, nonatomic) id realTarget;

- (instancetype)initWithRealTarget:(id)target;

+ (instancetype)weakObjectWithRealTarget:(id)target;

@end
