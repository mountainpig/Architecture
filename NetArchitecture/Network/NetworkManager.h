//
//  NetworkManager.h
//  NetArchitecture
//
//  Created by 黄敬 on 2018/8/30.
//  Copyright © 2018年 hj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>
/*
@protocol NetworkManagerDelegate
- (void)successedWithResponse:(id  _Nullable)responseObject;
- (void)failedWithResponse:(id  _Nullable)responseObject;
@end
*/



typedef void(^CompletionHandlerBlock)(NSDictionary * dataDict, NSDictionary * failDict);

@interface NetworkManager : NSObject

//默认服务域名
+ (void)getRequestWithParams:(NSDictionary *)paramsDict completionHandler:(nullable void (^)(NSURLResponse *response, id _Nullable responseObject,  NSError * _Nullable error))completionHandler;


+ (void)getRequestWithServer:(NSString *)server params:(NSDictionary *)paramsDict completionHandler:(nullable void (^)(NSURLResponse *response, id _Nullable responseObject,  NSError * _Nullable error))completionHandler;

@end
