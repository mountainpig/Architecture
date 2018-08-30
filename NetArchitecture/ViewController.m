//
//  ViewController.m
//  NetArchitecture
//
//  Created by 黄敬 on 2018/8/30.
//  Copyright © 2018年 hj. All rights reserved.
//

#import "ViewController.h"
#import "UserInfoNetwork.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self userInfoRequest];
}

- (void)userInfoRequest
{
    [UserInfoNetwork getUserInfoWithParams:@{@"userId":@""} completionHandler:^(NSDictionary *dataDict, NSDictionary *failDict) {
        if (dataDict) {
            
        } else {
            
        }
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
