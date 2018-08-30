//
//  ContentListNetwork.m
//  NetArchitecture
//
//  Created by 黄敬 on 2018/8/30.
//  Copyright © 2018年 hj. All rights reserved.
//

#import "ContentListNetwork.h"

NSString * const kPropertyListKeyContentId = @"kPropertyListKeyContentId";
NSString * const kPropertyListKeyContentName = @"kPropertyListKeyContentName";

@implementation ContentListNetwork

+ (void)getContentListWithParams:(NSDictionary *)paramsDict completionHandler:(CompletionHandlerBlock)completion
{
    [self getRequestWithParams:paramsDict completionHandler:^(NSURLResponse *response, id  _Nullable responseObject, NSError * _Nullable error) {
        if (error) {
            NSDictionary *failDict = @{};
            completion(nil,failDict);
        } else {
            completion([self contentListWithResponseObject:responseObject],nil);
        }
    }];
}

+ (NSDictionary *)contentListWithResponseObject:(id _Nullable)responseObject
{
    return @{kPropertyListKeyContentId : @"",
             kPropertyListKeyContentName : @""};
}

@end
