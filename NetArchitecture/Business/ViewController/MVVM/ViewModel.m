//
//  ViewModel.m
//  NetArchitecture
//
//  Created by 黄敬 on 2018/8/30.
//  Copyright © 2018年 hj. All rights reserved.
//

#import "ViewModel.h"
#import "UserInfoNetwork.h"
#import "RouterManager.h"

@implementation ViewModel

- (instancetype)init
{
    self = [super init];
    [self addObserver:self forKeyPath:@"selectIndexPath" options:NSKeyValueObservingOptionNew context:NULL];
    return self;
}

- (void)getUserListWithCompletion:(void(^)(NSArray *array))completion
{
    completion(@[@"1",@"2"]);
}

- (void)dealloc
{
    [self removeObserver:self forKeyPath:@"selectIndexPath"];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary*)change context:(void *)context {
    NSIndexPath *indexPath = change[NSKeyValueChangeNewKey];
    if (indexPath.row == 0) {
        UIViewController *detailVC = [[RouterManager sharedInstance] performTargetClassName:@"DetailViewController" action:@"loadWithParmas:" parmas:nil];
        [self.viewController.navigationController pushViewController:detailVC animated:YES];
    }
    
}
@end
