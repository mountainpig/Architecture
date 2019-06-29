//
//  DetailPresent.m
//  NetArchitecture
//
//  Created by hj on 2019/6/29.
//  Copyright © 2019 hj. All rights reserved.
//

#import "DetailPresent.h"
#import "DetailModel.h"


@implementation DetailPresent

- (void)loadData
{
    DetailModel *model = [DetailModel new];
    model.number = @"1";
    self.dataArray = [[NSMutableArray alloc] init];
    [self.dataArray addObject:model];
}

- (void)btnClickWithChangeStr:(NSString *)str indexPath:(NSIndexPath *)indexPath
{
    DetailModel *model = self.dataArray[indexPath.row];
    model.number = str;
}

- (void)refresh
{
    [self.dataArray removeAllObjects];
    DetailModel *model = [DetailModel new];
    model.number = @"1";
    [self.dataArray addObject:model];
    [self.delegate refreshUI];
}
@end
