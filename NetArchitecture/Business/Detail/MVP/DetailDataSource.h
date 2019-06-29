//
//  DetailDataSource.h
//  NetArchitecture
//
//  Created by hj on 2019/6/29.
//  Copyright © 2019 hj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DetailTableViewCell.h"
#import "DetailModel.h"

typedef void(^loadBlock) (DetailModel *model,DetailTableViewCell *cell,NSIndexPath *indexPath);

@interface DetailDataSource : NSObject<UITableViewDataSource>
@property (nonatomic, strong) NSMutableArray *dataArray;

- (instancetype)initWithBlock:(loadBlock)block;



@end

