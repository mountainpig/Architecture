//
//  RouterManager.m
//  NetArchitecture
//
//  Created by hj on 2019/7/3.
//  Copyright © 2019 hj. All rights reserved.
//

#import "RouterManager.h"

@implementation RouterManager


static RouterManager *instance = nil;

+ (RouterManager *)sharedInstance {
    static dispatch_once_t onceToken ;
    dispatch_once(&onceToken, ^{
        if (nil == instance) {
            instance = [[RouterManager alloc] init];
        }
    });
    return instance;
}

- (UIViewController *)performTargetClassName:(NSString *)name action:(NSString *)action parmas:(NSDictionary *)parmas
{
    UIViewController *target = (UIViewController *)[[NSClassFromString(name) alloc] init];
    [target performSelector:NSSelectorFromString(action) withObject:parmas];
    return target;
}
@end
