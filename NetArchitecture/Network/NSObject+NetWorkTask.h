//
//  NSObject+NetWorkTask.h
//  NetArchitecture
//
//  Created by 黄敬 on 2018/8/30.
//  Copyright © 2018年 hj. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (NetWorkTask)
@property (nonatomic, strong) NSMutableArray *taskArray;

- (void)addNetTask:(NSURLSessionDataTask *)task;

@end
