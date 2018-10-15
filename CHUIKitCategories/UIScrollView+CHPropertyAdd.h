//
//  UIScrollView+CHPropertyAdd.h
//  CHUIKitCategories-Demo
//
//  Created by 张晨晖 on 2018/9/27.
//  Copyright © 2018 张晨晖. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIScrollView (CHPropertyAdd)

@property (nonatomic ,strong) UIImageView *ch_verticalScrollIndicator;

@property (nonatomic ,strong) UIImageView *ch_horizontalScrollIndicator;

@end

NS_ASSUME_NONNULL_END
