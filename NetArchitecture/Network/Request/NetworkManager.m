//
//  NetworkManager.m
//  NetArchitecture
//
//  Created by 黄敬 on 2018/8/30.
//  Copyright © 2018年 hj. All rights reserved.
//

#import "NetworkManager.h"

NSString * const DefaultServer = @"https://www.xxoo.com/";

@implementation NetworkManager

static AFHTTPSessionManager *sharedInstance;

#pragma mark - Initial Methods
+ (AFHTTPSessionManager *)sharedInstanceSessionManager
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [AFHTTPSessionManager manager];
    });
    return sharedInstance;
}

+ (NSURLSessionDataTask *)getRequestWithParams:(NSDictionary *)paramsDict completionHandler:(nullable void (^)(NSURLResponse *response, id _Nullable responseObject,  NSError * _Nullable error))completionHandler
{
    return [self getRequestWithServer:DefaultServer params:paramsDict completionHandler:completionHandler];
}

+ (NSURLSessionDataTask *)getRequestWithServer:(NSString *)server params:(NSDictionary *)paramsDict completionHandler:(nullable void (^)(NSURLResponse *response, id _Nullable responseObject,  NSError * _Nullable error))completionHandler;
{
    NSURLRequest *request = [[AFHTTPRequestSerializer serializer] requestWithMethod:@"GET" URLString:server parameters:nil error:nil];
    NSURLSessionDataTask *dataTask = [[self sharedInstanceSessionManager] dataTaskWithRequest:request uploadProgress:nil downloadProgress:nil completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        if (completionHandler) {
            completionHandler(response,responseObject,error);
        }
    }];
    [dataTask resume];
    return dataTask;
}

@end
