//
//  UITextView+CHPropertyAdd.h
//  CHUIKitCategories-Demo
//
//  Created by 张晨晖 on 2018/9/6.
//  Copyright © 2018年 张晨晖. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (CHPropertyAdd)

/// iOS9以上支持
@property (nonatomic ,strong) NSAttributedString *ch_placeholderAttributedString API_AVAILABLE(ios(9.0),tvos(11.0));

/// 占位文字
@property (nonatomic ,strong) NSString *ch_placeholderText API_AVAILABLE(ios(9.0),tvos(11.0));

/// 占位文字字体大小
@property (nonatomic ,strong) UIFont *ch_placeholderFont API_AVAILABLE(ios(9.0),tvos(11.0));

/// 占位文字颜色
@property (nonatomic ,strong) UIColor *ch_placeholderTextColor API_AVAILABLE(ios(9.0),tvos(11.0));

@end
