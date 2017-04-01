//
//  WXWeakObject.m
//  WXWaveView-demo
//
//  Created by cp on 2017/4/1.
//  Copyright © 2017年 Welkin. All rights reserved.
//
//  Github: https://github.com/WelkinXie/WXWaveView
//

#import "WXWeakObject.h"

@implementation WXWeakObject

- (instancetype)initWithRealTarget:(id)target {
    self = [self init];
    if (self) {
        _realTarget = target;
    }
    return self;
}

+ (instancetype)weakObjectWithRealTarget:(id)target {
    return [[self alloc] initWithRealTarget:target];
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    return _realTarget;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    return [NSMethodSignature signatureWithObjCTypes:"v@:"];
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    
}

@end
