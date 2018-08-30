//
//  UserInfoNetwork.h
//  NetArchitecture
//
//  Created by 黄敬 on 2018/8/30.
//  Copyright © 2018年 hj. All rights reserved.
//

#import "NetworkManager.h"
#import "UserModel.h"
@interface UserInfoNetwork : NetworkManager

+ (NSURLSessionDataTask *)getUserInfoWithParams:(NSDictionary *)paramsDict completionHandler:(CompletionHandlerBlock)completion;

+ (NSURLSessionDataTask *)getUserModelWithParams:(NSDictionary *)paramsDict completionHandler:(nullable void (^)(UserModel *user,NSDictionary *failDict))completionHandler;

@end
