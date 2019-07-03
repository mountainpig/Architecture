//
//  DetailViewController.m
//  NetArchitecture
//
//  Created by hj on 2019/6/28.
//  Copyright © 2019 hj. All rights reserved.
//

#import "DetailViewController.h"
#import "DetailPresent.h"
#import "DetailDataSource.h"
#import "DetailTableViewCell.h"
#import "DetailModel.h"

@interface DetailViewController ()<UITableViewDelegate,DetailProtocol>
@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, strong) DetailPresent *present;
@property (nonatomic, strong) DetailDataSource *dataSource;
@end

@implementation DetailViewController


- (void)loadWithParmas:(NSDictionary *)parmas
{
    NSLog(@"load detail");
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.present = [[DetailPresent alloc] init];
    self.present.delegate = self;
    [self.present loadData];
    
    __weak typeof(self) weakSelf = self;
    self.dataSource = [[DetailDataSource alloc] initWithBlock:^(DetailModel *model, DetailTableViewCell *cell, NSIndexPath *indexPath) {
        cell.delegate = weakSelf.present;
        cell.indexPath = indexPath;
        [cell loadNumber:model.number];
    }];
    self.dataSource.dataArray = self.present.dataArray;

    [self.view addSubview:self.tableView];
    // Do any additional setup after loading the view
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"刷新" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(refreshClick) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
}

#pragma mark - action
- (void)refreshClick
{
    [self.present refresh];
}

#pragma mark - DetailProtocol
- (void)refreshUI
{
    [self.tableView reloadData];
}

#pragma mark - getters and setters

- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
        _tableView.frame = self.view.bounds;
        _tableView.dataSource = self.dataSource;
    }
    return _tableView;
}
@end
