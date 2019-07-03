//
//  ViewModel.h
//  NetArchitecture
//
//  Created by 黄敬 on 2018/8/30.
//  Copyright © 2018年 hj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserModel.h"

typedef void(^successBlock) (NSArray *array);

@interface ViewModel : NSObject

@property (nonatomic, weak) UIViewController *viewController;
@property (nonatomic, copy) successBlock sucess;
@property (nonatomic, strong) NSIndexPath *selectIndexPath;

- (void)getUserListWithCompletion:(void(^)(NSArray *array))completion;
@end
