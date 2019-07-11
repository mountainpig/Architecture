//
//  ItemTableViewCell.m
//  NetArchitecture
//
//  Created by hj on 2019/7/11.
//  Copyright © 2019 hj. All rights reserved.
//

#import "ItemTableViewCell.h"
#import "ItemLabelTableViewCell.h"
#import "ItemButtonTableViewCell.h"
#import "ItemImageTableViewCell.h"

@implementation ItemTableViewCell


+ (instancetype)labelCellWithIdenfier:(NSString *)cellIdenfier
{
    ItemLabelTableViewCell *cell = [[ItemLabelTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdenfier];
    return cell;
}

+ (instancetype)buttonCellWithIdenfier:(NSString *)cellIdenfier
{
    ItemButtonTableViewCell *cell = [[ItemButtonTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdenfier];
    return cell;
}

+ (instancetype)imageCellWithIdenfier:(NSString *)cellIdenfier
{
    ItemImageTableViewCell *cell = [[ItemImageTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdenfier];
    return cell;
}

- (void)loadLabelText:(NSString *)text{}

- (void)loadButtonTitle:(NSString *)title{}

- (void)loadImage:(UIImage *)image{}


@end
