//
//  DetailTableViewCell.h
//  NetArchitecture
//
//  Created by hj on 2019/6/28.
//  Copyright © 2019 hj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailTableViewCell : UITableViewCell

@property (nonatomic, strong) NSIndexPath *indexPath;
@property (nonatomic, weak) id <DetailProtocol>delegate;

- (void)loadNumber:(NSString *)number;

@end

NS_ASSUME_NONNULL_END
