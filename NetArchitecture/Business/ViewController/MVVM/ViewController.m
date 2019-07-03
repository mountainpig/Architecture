//
//  ViewController.m
//  NetArchitecture
//
//  Created by 黄敬 on 2018/8/30.
//  Copyright © 2018年 hj. All rights reserved.
//

#import "ViewController.h"
#import "ViewModel.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) ViewModel *viewModel;
@property (nonatomic, strong) NSMutableArray *dataArray;
@end

@implementation ViewController

#pragma mark - life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.tableView];
    __weak typeof(self) weakSelf = self;
    self.viewModel.sucess = ^(NSArray *array) {
        [weakSelf.dataArray removeAllObjects];
        [weakSelf.dataArray addObjectsFromArray:array];
        [weakSelf.tableView reloadData];
    };
    [self userListRequest];
}

#pragma mark - UITableViewDelegate

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdenfier = @"cellIdenfier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdenfier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault  reuseIdentifier:cellIdenfier];
    }
    cell.textLabel.text = self.dataArray[indexPath.row];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.viewModel.selectIndexPath = indexPath;
}

#pragma mark - CustomDelegate

- (void)doSomething
{
    
}

#pragma mark - event response

- (void)btnClick:(id)sender
{
    
}

#pragma mark - private methods

- (void)userListRequest
{
    __weak typeof(self) weakSelf = self;
    [self.viewModel getUserListWithCompletion:^(NSArray *array) {
        weakSelf.viewModel.sucess(array);
    }];

}

#pragma mark - getters and setters

- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
        _tableView.frame = self.view.bounds;
        _tableView.dataSource = self;
        _tableView.delegate = self;
    }
    return _tableView;
}

- (ViewModel *)viewModel
{
    if (!_viewModel) {
        _viewModel = [[ViewModel alloc] init];
        _viewModel.viewController = self;
    }
    return _viewModel;
}

- (NSMutableArray *)dataArray
{
    if (!_dataArray) {
        _dataArray = [[NSMutableArray alloc] init];
    }
    return _dataArray;
}

@end
