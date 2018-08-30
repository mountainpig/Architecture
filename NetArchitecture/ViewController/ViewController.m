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
@end

@implementation ViewController

#pragma mark - life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.tableView];
    
    [self userInfoRequest];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(xxoo) name:@"" object:nil];
}

#pragma mark - UITableViewDelegate

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [UITableViewCell new];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
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

- (void)userInfoRequest
{
    [self.viewModel getUserInfoWithCompletion:^(UserModel *user) {
        
    }];

}

#pragma mark - getters and setters

- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
    }
    return _tableView;
}

- (ViewModel *)viewModel
{
    if (!_viewModel) {
        _viewModel = [[ViewModel alloc] init];
    }
    return _viewModel;
}


@end
