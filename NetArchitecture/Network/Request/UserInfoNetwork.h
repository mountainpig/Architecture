//
//  UserInfoNetwork.h
//  NetArchitecture
//
//  Created by 黄敬 on 2018/8/30.
//  Copyright © 2018年 hj. All rights reserved.
//

#import "NetworkManager.h"

@interface UserInfoNetwork : NetworkManager

+ (NSURLSessionDataTask *)getUserInfoWithParams:(NSDictionary *)paramsDict completionHandler:(CompletionHandlerBlock)completion;

@end
