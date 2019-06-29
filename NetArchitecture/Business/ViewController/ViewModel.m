//
//  ViewModel.m
//  NetArchitecture
//
//  Created by 黄敬 on 2018/8/30.
//  Copyright © 2018年 hj. All rights reserved.
//

#import "ViewModel.h"
#import "UserInfoNetwork.h"

@implementation ViewModel

- (void)getUserInfoWithCompletion:(void(^)(UserModel *user))completion
{
    NSURLSessionDataTask *task = [UserInfoNetwork getUserModelWithParams:@{@"userId":@""} completionHandler:^(UserModel *user, NSDictionary *failDict) {
        if (completion) {
            completion(user);
        } else {
            
        }
    }];
    [self addNetTask:task];
}

@end
