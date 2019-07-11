//
//  ItemTableViewCell+EX.m
//  NetArchitecture
//
//  Created by hj on 2019/7/11.
//  Copyright © 2019 hj. All rights reserved.
//

#import "ItemTableViewCell+EX.h"

@implementation ItemTableViewCell (EX)

+ (instancetype)cellWithTableView:(UITableView *)tableView type:(ItemType)type
{
    switch (type) {
        case ItemLabelType:
        {
            static NSString *idenfier = @"labelIdenfier";
            ItemTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:idenfier];
            if (cell) {
                return cell;
            }
            return [self labelCellWithIdenfier:idenfier];
        }
            break;
        case ItemButtonType:
        {
            static NSString *idenfier = @"buttonIdenfier";
            ItemTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:idenfier];
            if (cell) {
                return cell;
            }
            return [self buttonCellWithIdenfier:idenfier];
        }
            break;
        case ItemImageType:
        {
            static NSString *idenfier = @"imageIdenfier";
            ItemTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:idenfier];
            if (cell) {
                return cell;
            }
            return [self imageCellWithIdenfier:idenfier];
        }
            break;
            
        default:
            break;
    }
    return [ItemTableViewCell new];
}

- (void)loadWithModel:(ItemModel *)model
{
    switch (model.type) {
        case ItemLabelType:
        {
            [self loadLabelText:model.text];
        }
            break;
        case ItemButtonType:
        {
            [self loadButtonTitle:model.title];
        }
            break;
        case ItemImageType:
        {
            [self loadImage:model.image];
        }
            break;
            
        default:
            break;
    }
}

@end
