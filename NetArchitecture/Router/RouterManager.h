//
//  RouterManager.h
//  NetArchitecture
//
//  Created by hj on 2019/7/3.
//  Copyright © 2019 hj. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface RouterManager : NSObject

+ (RouterManager *)sharedInstance;


- (UIViewController *)performTargetClassName:(NSString *)name action:(NSString *)action parmas:(NSDictionary *)parmas;

@end


