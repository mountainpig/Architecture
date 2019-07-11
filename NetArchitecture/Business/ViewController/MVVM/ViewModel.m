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
#import "ItemModel.h"

@implementation ViewModel

- (instancetype)init
{
    self = [super init];
    [self addObserver:self forKeyPath:@"selectIndexPath" options:NSKeyValueObservingOptionNew context:NULL];
    return self;
}

- (void)getUserListWithCompletion:(void(^)(NSArray *array))completion
{
    ItemModel *item1 = [ItemModel new];
    item1.type = ItemLabelType;
    item1.text = @"label";
    
    ItemModel *item2 = [ItemModel new];
    item2.type = ItemButtonType;
    item2.title = @"button";
    
    ItemModel *item3 = [ItemModel new];
    item3.type = ItemImageType;
    item3.image = [UIImage imageNamed:@"question"];
    
    completion(@[item1,item2,item3]);
}

- (void)dealloc
{
    [self removeObserver:self forKeyPath:@"selectIndexPath"];
}

#pragma mark - KVO

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary*)change context:(void *)context {
    NSIndexPath *indexPath = change[NSKeyValueChangeNewKey];
    if (indexPath.row == 0) {
        UIViewController *detailVC = [[RouterManager sharedInstance] detailWithParmas:nil];
        [self.viewController.navigationController pushViewController:detailVC animated:YES];
    }
    
}
@end
