//
//  ViewModel.h
//  NetArchitecture
//
//  Created by 黄敬 on 2018/8/30.
//  Copyright © 2018年 hj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserModel.h"

@interface ViewModel : NSObject
- (void)getUserInfoWithCompletion:(void(^)(UserModel *user))completion;
@end
