//
//  UIPageControl+CHPropertyAdd.h
//  CHUIKitCategories-Demo
//
//  Created by 张晨晖 on 2018/9/19.
//  Copyright © 2018年 张晨晖. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIPageControl (CHPropertyAdd)

/// MARK:图片
/// 当前选中page的图片
@property (nonatomic ,strong) UIImage *ch_currentPageImage;
/// 正常状态Page的图片
@property (nonatomic ,strong) UIImage *ch_pageImage;

@end
