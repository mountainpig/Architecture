//
//  DetailPresent.h
//  NetArchitecture
//
//  Created by hj on 2019/6/29.
//  Copyright © 2019 hj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DetailProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailPresent : NSObject <DetailProtocol>

@property (nonatomic, weak) id <DetailProtocol>delegate;

@end

NS_ASSUME_NONNULL_END
