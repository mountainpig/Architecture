//
//  UserInfoNetwork.m
//  NetArchitecture
//
//  Created by 黄敬 on 2018/8/30.
//  Copyright © 2018年 hj. All rights reserved.
//

#import "UserInfoNetwork.h"
#import "PropertyListKeys.h"

NSString * const kPropertyListKeyUserId = @"kPropertyListKeyUserId";
NSString * const kPropertyListKeyUserName = @"kPropertyListKeyUserName";

@implementation UserInfoNetwork

+ (NSURLSessionDataTask *)getUserInfoWithParams:(NSDictionary *)paramsDict completionHandler:(CompletionHandlerBlock)completion
{
    return [self getRequestWithParams:paramsDict completionHandler:^(NSURLResponse *response, id  _Nullable responseObject, NSError * _Nullable error) {
        if (error) {
            NSDictionary *failDict = @{};
            completion(nil,failDict);
        } else {
            completion([self userDictWithResponseObject:responseObject],nil);
        }
    }];
}

+ (NSDictionary *)userDictWithResponseObject:(id _Nullable)responseObject
{
    return @{kPropertyListKeyUserId : @"",
             kPropertyListKeyUserName : @""};
}


+ (NSURLSessionDataTask *)getUserModelWithParams:(NSDictionary *)paramsDict completionHandler:(nullable void (^)(UserModel *user,NSDictionary *failDict))completionHandler
{
    return [self getRequestWithParams:paramsDict completionHandler:^(NSURLResponse *response, id  _Nullable responseObject, NSError * _Nullable error) {
        if (error) {
            NSDictionary *failDict = @{};
            completionHandler(nil,failDict);
        } else {
            completionHandler([self userModelWithResponseObject:responseObject],nil);
        }
    }];
}

+ (UserModel *)userModelWithResponseObject:(id _Nullable)responseObject
{
    return nil;
}

@end
