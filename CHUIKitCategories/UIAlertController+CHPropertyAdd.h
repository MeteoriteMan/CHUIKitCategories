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

/// 标题
@property (nonatomic ,strong) NSAttributedString *ch_attributedTitle;

/// 详细文字
@property (nonatomic ,strong) NSAttributedString *ch_attributedMessage;

/// 建议不要使用.alert模式的时候显示在alertcontrol的底部.sheet模式的时候直接被遮挡
@property (nonatomic ,strong) NSAttributedString *ch_attributedDetailMessage;

/// actions数组中具有UIAlertActionStyleCancel属性的不能超过一个.
@property (nonatomic ,strong) NSArray *ch_actions;

@end
