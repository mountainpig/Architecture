//
//  ItemTableViewCell.h
//  NetArchitecture
//
//  Created by hj on 2019/7/11.
//  Copyright © 2019 hj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemTableViewCell : UITableViewCell

+ (instancetype)labelCellWithIdenfier:(NSString *)cellIdenfier;
+ (instancetype)buttonCellWithIdenfier:(NSString *)cellIdenfier;
+ (instancetype)imageCellWithIdenfier:(NSString *)cellIdenfier;

- (void)loadLabelText:(NSString *)text;
- (void)loadButtonTitle:(NSString *)title;
- (void)loadImage:(UIImage *)image;
@end
