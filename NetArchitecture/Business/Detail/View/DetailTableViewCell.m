//
//  DetailTableViewCell.m
//  NetArchitecture
//
//  Created by hj on 2019/6/28.
//  Copyright © 2019 hj. All rights reserved.
//

#import "DetailTableViewCell.h"

@interface DetailTableViewCell()
@property (nonatomic, strong) UIButton *numBtn;
@end

@implementation DetailTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self.numBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.contentView addSubview:self.numBtn];
    self.numBtn.frame = CGRectMake(0, 0, 44, 44);
    [self.numBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.numBtn addTarget:self action:@selector(numBtn:) forControlEvents:UIControlEventTouchUpInside];
    return self;
}

- (void)loadNumber:(NSString *)number
{
    [self.numBtn setTitle:number forState:UIControlStateNormal];
}

- (void)numBtn:(UIButton *)sender
{
    NSString *test = @"999";
    [self loadNumber:test];
    [self.delegate btnClickWithChangeStr:test indexPath:self.indexPath];
}
@end
