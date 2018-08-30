//
//  UserModel.h
//  NetArchitecture
//
//  Created by 黄敬 on 2018/8/30.
//  Copyright © 2018年 hj. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSUInteger, UserRelationType) {
    UserRelationTypeNone,
    UserRelationTypeAttention,
    UserRelationTypeFans,
    UserRelationTypeEachAttention,
};
@interface UserModel : NSObject

@property (nonatomic, assign) UserRelationType relation;
/*
 胖model example
 */
- (BOOL)isMyAttention;

@end
