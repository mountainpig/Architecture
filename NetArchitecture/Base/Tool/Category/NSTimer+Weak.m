//
//  NSTimer+Weak.m
//  NetArchitecture
//
//  Created by hj on 2019/7/4.
//  Copyright © 2019 hj. All rights reserved.
//

#import "NSTimer+Weak.h"


@interface HProxy : NSProxy
@property (nonatomic, weak) id target;
@end

@implementation HProxy
- (void)forwardInvocation:(NSInvocation *)invocation
{
    [invocation invokeWithTarget:self.target];
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel
{
    return [self.target methodSignatureForSelector:sel];
}

@end

@implementation NSTimer (Weak)

+ (NSTimer *)weak_timerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(nullable id)userInfo repeats:(BOOL)yesOrNo
{
    HProxy *proxy = [HProxy alloc];
    proxy.target = aTarget;
    return  [self timerWithTimeInterval:ti target:proxy selector:aSelector userInfo:userInfo repeats:yesOrNo];
}

+ (NSTimer *)weak_scheduledTimerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(nullable id)userInfo repeats:(BOOL)yesOrNo
{
    HProxy *proxy = [HProxy alloc];
    proxy.target = aTarget;
    return  [self scheduledTimerWithTimeInterval:ti target:proxy selector:aSelector userInfo:userInfo repeats:yesOrNo];
}

@end
