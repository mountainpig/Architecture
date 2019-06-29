//
//  DetailProtocol.h
//  NetArchitecture
//
//  Created by hj on 2019/6/29.
//  Copyright © 2019 hj. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol DetailProtocol <NSObject>

@optional
- (void)btnClickWithChangeStr:(NSString *)str indexPath:(NSIndexPath *)indexPath;
- (void)refreshUI;
@end

