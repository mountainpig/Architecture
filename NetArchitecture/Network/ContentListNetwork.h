//
//  ContentListNetwork.h
//  NetArchitecture
//
//  Created by 黄敬 on 2018/8/30.
//  Copyright © 2018年 hj. All rights reserved.
//

#import "NetworkManager.h"

@interface ContentListNetwork : NetworkManager

+ (void)getContentListWithParams:(NSDictionary *)paramsDict completionHandler:(CompletionHandlerBlock)completion;

@end
