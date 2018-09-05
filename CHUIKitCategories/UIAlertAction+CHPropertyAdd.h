//
//  UIAlertAction+CHPropertyAdd.h
//  CHUIKitCategories
//
//  Created by 张晨晖 on 2018/9/3.
//  Copyright © 2018年 张晨晖. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertAction (CHPropertyAdd)

/// 按钮文字排布
@property (nonatomic ,assign) NSTextAlignment ch_titleTextAlignment;

/// 按钮颜色
@property (nonatomic ,strong) UIColor *ch_titleColor;

@property (nonatomic ,strong) UIColor *ch_imageTintColor;

@property (nonatomic ,strong) UIImage *ch_image;

@end
