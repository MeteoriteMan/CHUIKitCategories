//
//  UIAlertController+CHPropertyAdd.h
//  CHUIKitCategories
//
//  Created by 张晨晖 on 2018/9/3.
//  Copyright © 2018年 张晨晖. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (CHPropertyAdd)

@property (nonatomic ,strong) UIColor *ch_titleColor;

@property (nonatomic ,strong) UIFont *ch_titleFont;

@property (nonatomic ,strong) UIColor *ch_messageColor;

@property (nonatomic ,strong) UIFont *ch_messageFont;

///// 标题
//@property (nonatomic ,strong) NSAttributedString *ch_attributedTitle;
//
///// 详细文字
//@property (nonatomic ,strong) NSAttributedString *ch_attributedMessage;
//
///// 意义不明
//@property (nonatomic ,strong) NSAttributedString *ch_attributedDetailMessage;

@end
