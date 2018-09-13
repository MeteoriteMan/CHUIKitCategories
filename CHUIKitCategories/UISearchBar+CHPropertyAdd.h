//
//  UISearchBar+CHPropertyAdd.h
//  CHUIKitCategories-Demo
//
//  Created by 张晨晖 on 2018/9/12.
//  Copyright © 2018年 张晨晖. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UISearchBar (CHPropertyAdd)

/// UISearchBar的输入框
@property (nonatomic ,strong) UITextField *ch_searchField;

/// 取消按钮
@property (nonatomic ,strong) UIButton *ch_cancelButton;

///
@property (nonatomic ,strong) UIView *ch_background;

//@property (nonatomic ,strong) UIView *ch_scopeBar;
//
//@property (nonatomic ,strong) UIView *ch_scopeBarContainerView;
//
//@property (nonatomic ,strong) UIImageView *ch_shadowView;
//
//@property (nonatomic ,strong) UINavigationItem *ch_searchDisplayControllerNavigationItem;
//
//@property (nonatomic ,strong) UIBarButtonItem *ch_cancelBarButtonItem;
//
//@property (nonatomic ,strong) UIButton *ch_leftButton;
//
//@property (nonatomic ,strong) UIColor *ch_statusBarTintColor;

@end
