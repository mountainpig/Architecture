//
//  NSObject+NetWorkTask.m
//  NetArchitecture
//
//  Created by 黄敬 on 2018/8/30.
//  Copyright © 2018年 hj. All rights reserved.
//

#import "NSObject+NetWorkTask.h"
#import <objc/runtime.h>
const void *const kTaskArrayKey = &kTaskArrayKey;

@implementation NSObject (NetWorkTask)

+ (void)load
{
    method_exchangeImplementations(class_getInstanceMethod([self class], NSSelectorFromString(@"dealloc")), class_getInstanceMethod([self class], @selector(task_dealloc)));
}

- (void)addNetTask:(NSURLSessionDataTask *)task
{
    if (!task) {
        return;
    }
    if (!self.taskArray) {
        self.taskArray = [[NSMutableArray alloc] init];
    }
    [self.taskArray addNetTask:task];
}

- (NSMutableArray *)taskArray
{
    return objc_getAssociatedObject(self, kTaskArrayKey);
}

- (void)setTaskArray:(NSMutableArray *)taskArray
{
    objc_setAssociatedObject(self, kTaskArrayKey, taskArray, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)task_dealloc
{
    [self.taskArray enumerateObjectsUsingBlock:^(NSURLSessionDataTask *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj cancel];
    }];
    [self.taskArray removeAllObjects];
    [self task_dealloc];
}

@end
