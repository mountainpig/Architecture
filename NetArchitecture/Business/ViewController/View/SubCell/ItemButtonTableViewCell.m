//
//  ItemButtonTableViewCell.m
//  NetArchitecture
//
//  Created by hj on 2019/7/11.
//  Copyright © 2019 hj. All rights reserved.
//

#import "ItemButtonTableViewCell.h"

@implementation ItemButtonTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)loadButtonTitle:(NSString *)title{
    self.textLabel.text = title;
}
@end
