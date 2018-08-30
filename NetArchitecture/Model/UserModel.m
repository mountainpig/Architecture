//
//  UserModel.m
//  NetArchitecture
//
//  Created by 黄敬 on 2018/8/30.
//  Copyright © 2018年 hj. All rights reserved.
//

#import "UserModel.h"

@implementation UserModel

- (BOOL)isMyAttention
{
    return self.relation == UserRelationTypeAttention || self.relation == UserRelationTypeEachAttention;
}

@end
