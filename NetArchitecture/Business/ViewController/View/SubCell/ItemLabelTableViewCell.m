//
//  ItemLabelTableViewCell.m
//  NetArchitecture
//
//  Created by hj on 2019/7/11.
//  Copyright © 2019 hj. All rights reserved.
//

#import "ItemLabelTableViewCell.h"

@implementation ItemLabelTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)loadLabelText:(NSString *)text{
    self.textLabel.text = text;
}
@end
