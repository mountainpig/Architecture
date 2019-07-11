//
//  ItemModel.h
//  NetArchitecture
//
//  Created by hj on 2019/7/11.
//  Copyright © 2019 hj. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, ItemType) {
    ItemLabelType,
    ItemButtonType,
    ItemImageType,
};

@interface ItemModel : NSObject
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, assign) ItemType type;
@end


