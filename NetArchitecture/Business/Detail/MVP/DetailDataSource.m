//
//  DetailDataSource.m
//  NetArchitecture
//
//  Created by hj on 2019/6/29.
//  Copyright © 2019 hj. All rights reserved.
//

#import "DetailDataSource.h"

@interface DetailDataSource()
@property (nonatomic, strong) NSMutableArray *dataArray;
@property (nonatomic, copy) loadBlock block;
@end

@implementation DetailDataSource


- (instancetype)initWithBlock:(loadBlock)block
{
    self = [super init];
    self.block = block;
    return self;
}

- (void)loadData
{
    DetailModel *model = [DetailModel new];
    model.number = @"1";
    self.dataArray = [[NSMutableArray alloc] init];
    [self.dataArray addObject:model];
}

#pragma mark - UITableViewDataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdenfier = @"cellIdenfier";
    DetailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdenfier];
    if (!cell) {
        cell = [[DetailTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault  reuseIdentifier:cellIdenfier];
    }
    DetailModel *model = self.dataArray[indexPath.row];
    self.block(model, cell, indexPath);
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}

@end
