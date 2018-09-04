//
//  UIAlertAction+CHPropertyAdd.m
//  CHUIKitCategories
//
//  Created by 张晨晖 on 2018/9/3.
//  Copyright © 2018年 张晨晖. All rights reserved.
//

#import "UIAlertAction+CHPropertyAdd.h"
#import <objc/runtime.h>

@implementation UIAlertAction (CHPropertyAdd)

@dynamic ch_titleColor;

static char *ch_titleColorKey = "titleTextColor";///按钮title颜色

/// 系统私有属性
static NSString *titleTextColor = @"titleTextColor";

- (UIColor *)ch_titleColor {
    id color = objc_getAssociatedObject(self, ch_titleColorKey);
    if (color == nil) {
        return [UIColor lightGrayColor];
    } else {
        return color;
    }
    return objc_getAssociatedObject(self, ch_titleColorKey);
}

- (void)setCh_titleColor:(UIColor *)ch_titleColor {
    objc_setAssociatedObject(self, ch_titleColorKey, ch_titleColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self setValue:ch_titleColor forKey:titleTextColor];
}


@end
