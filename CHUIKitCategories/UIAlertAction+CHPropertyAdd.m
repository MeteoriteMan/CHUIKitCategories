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
@dynamic ch_titleTextAlignment;

static char *ch_titleColorKey = "ch_titleTextColor";///按钮title颜色
static char *ch_titleTextAlignmentKey = "ch_titleTextAlignment";

/// 系统私有属性
static NSString *titleTextColorKey = @"titleTextColor";
static NSString *titleTextAlignmentKey = @"titleTextAlignment";

- (void)setCh_titleColor:(UIColor *)ch_titleColor {
    objc_setAssociatedObject(self, ch_titleColorKey, ch_titleColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self setValue:ch_titleColor forKey:titleTextColorKey];
}

- (void)setCh_titleTextAlignment:(NSTextAlignment)ch_titleTextAlignment {
    objc_setAssociatedObject(self, ch_titleTextAlignmentKey, @(ch_titleTextAlignment), OBJC_ASSOCIATION_ASSIGN);
}

- (UIColor *)ch_titleColor {
    id color = objc_getAssociatedObject(self, ch_titleColorKey);
    if (color == nil) {
        return [UIColor lightGrayColor];
    } else {
        return color;
    }
    return objc_getAssociatedObject(self, ch_titleColorKey);
}

- (NSTextAlignment)ch_titleTextAlignment {
    id ch_titleTextAlignment = objc_getAssociatedObject(self, ch_titleTextAlignmentKey);
    if (ch_titleTextAlignment) {
        NSTextAlignment textAlignment;
        [ch_titleTextAlignment getValue:&textAlignment];
        return textAlignment;
    } else {
        return NSTextAlignmentCenter;
    }
}

@end
