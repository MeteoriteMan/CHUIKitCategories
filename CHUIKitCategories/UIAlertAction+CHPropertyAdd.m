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

@dynamic ch_titleTextAlignment;
@dynamic ch_titleColor;
@dynamic ch_imageTintColor;
@dynamic ch_image;

static char *ch_titleTextAlignmentKey = "ch_titleTextAlignmentKey";
static char *ch_titleColorKey = "ch_titleTextColorKey";///按钮title颜色
static char *ch_imageTintColorKey = "ch_imageTintColorKey";
static char *ch_imageKey = "ch_imageKey";

/// 系统私有属性
static NSString *titleTextAlignmentKey = @"titleTextAlignment";
static NSString *titleTextColorKey = @"titleTextColor";
static NSString *imageTintColorKey = @"imageTintColor";
static NSString *imageKey = @"image";

#pragma mark setter

- (void)setCh_titleTextAlignment:(NSTextAlignment)ch_titleTextAlignment {
    objc_setAssociatedObject(self, ch_titleTextAlignmentKey, @(ch_titleTextAlignment), OBJC_ASSOCIATION_ASSIGN);
    [self setValue:@(ch_titleTextAlignment) forKey:titleTextAlignmentKey];
}

- (void)setCh_titleColor:(UIColor *)ch_titleColor {
    objc_setAssociatedObject(self, ch_titleColorKey, ch_titleColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self setValue:ch_titleColor forKey:titleTextColorKey];
}

- (void)setCh_imageTintColor:(UIColor *)ch_imageTintColor {
    objc_setAssociatedObject(self, ch_imageTintColorKey, ch_imageTintColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self setValue:ch_imageTintColor forKey:imageTintColorKey];
}

- (void)setCh_image:(UIImage *)ch_image {
    objc_setAssociatedObject(self, ch_imageKey, ch_image, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self setValue:ch_image forKey:imageKey];
}

#pragma mark getter

- (NSTextAlignment)ch_titleTextAlignment {
    id ch_titleTextAlignment = objc_getAssociatedObject(self, ch_titleTextAlignmentKey);
    if (ch_titleTextAlignment) {
        NSTextAlignment textAlignment;
        [ch_titleTextAlignment getValue:&textAlignment];
        return textAlignment;
    } else {
        NSTextAlignment textAlignment;
        id result = [self valueForKey:titleTextAlignmentKey];
        [result getValue:&textAlignment];
        return textAlignment;
    }
}

- (UIColor *)ch_titleColor {
    id ch_titleColor = objc_getAssociatedObject(self, ch_titleColorKey);
    if (ch_titleColor) {
        return ch_titleColor;
    } else {
        return [self valueForKey:titleTextColorKey];;
    }
}

- (UIColor *)ch_imageTintColor {
    id ch_imageTintColor = objc_getAssociatedObject(self, ch_imageTintColorKey);
    if (ch_imageTintColor) {
        return ch_imageTintColor;
    } else {
        return [self valueForKey:imageTintColorKey];
    }
}

- (UIImage *)ch_image {
    id ch_image = objc_getAssociatedObject(self, ch_imageKey);
    if (ch_image) {
        return ch_image;
    } else {
        return [self valueForKey:imageKey];
    }
}

@end
