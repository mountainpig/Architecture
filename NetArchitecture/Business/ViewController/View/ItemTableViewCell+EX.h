//
//  ItemTableViewCell+EX.h
//  NetArchitecture
//
//  Created by hj on 2019/7/11.
//  Copyright © 2019 hj. All rights reserved.
//

#import "ItemTableViewCell.h"
#import "ItemModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface ItemTableViewCell (EX)

+ (instancetype)cellWithTableView:(UITableView *)tableView type:(ItemType)type;

- (void)loadWithModel:(ItemModel *)model;
@end

NS_ASSUME_NONNULL_END
