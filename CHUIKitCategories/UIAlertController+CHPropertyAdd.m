//
//  UIAlertController+CHPropertyAdd.m
//  CHUIKitCategories
//
//  Created by 张晨晖 on 2018/9/3.
//  Copyright © 2018年 张晨晖. All rights reserved.
//

#import "UIAlertController+CHPropertyAdd.h"
#import <objc/runtime.h>

@implementation UIAlertController (CHPropertyAdd)

@dynamic ch_titleColor;
@dynamic ch_titleFont;
@dynamic ch_messageColor;
@dynamic ch_messageFont;

static char *ch_titleColorKey = "ch_titleColorKey";
static char *ch_titleFontKey = "ch_titleFontKey";
static char *ch_messageColorKey = "ch_messageColorKey";
static char *ch_messageFontKey = "ch_messageFontKey";


/// 系统的私有属性
static NSString *attributedTitleKey = @"attributedTitle";
static NSString *attributedMessageKey = @"attributedMessage";

#pragma mark setter
- (void)setCh_titleColor:(UIColor *)ch_titleColor {
    objc_setAssociatedObject(self, ch_titleColorKey, ch_titleColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:self.title attributes:@{NSFontAttributeName:self.ch_titleFont,NSForegroundColorAttributeName:ch_titleColor}];
    [self setValue:attributedString forKey:attributedTitleKey];
}

- (void)setCh_titleFont:(UIFont *)ch_titleFont {
    objc_setAssociatedObject(self, ch_titleFontKey, ch_titleFont, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:self.title attributes:@{NSFontAttributeName:ch_titleFont,NSForegroundColorAttributeName:self.ch_titleColor}];
    [self setValue:attributedString forKey:attributedTitleKey];
}

- (void)setCh_messageColor:(UIColor *)ch_messageColor {
    objc_setAssociatedObject(self, ch_messageColorKey, ch_messageColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:self.title attributes:@{NSFontAttributeName:self.ch_messageFont,NSForegroundColorAttributeName:ch_messageColor}];
    [self setValue:attributedString forKey:attributedTitleKey];
}

- (void)setCh_messageFont:(UIFont *)ch_messageFont {
    objc_setAssociatedObject(self, ch_messageFontKey, ch_messageFont, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:self.title attributes:@{NSFontAttributeName:ch_messageFont,NSForegroundColorAttributeName:self.ch_messageColor}];
    [self setValue:attributedString forKey:attributedTitleKey];
}

#pragma mark getter

- (UIColor *)ch_titleColor {
    id color = objc_getAssociatedObject(self, ch_titleColorKey);
    if (color == nil) {
        return [UIColor darkTextColor];
    } else {
        return color;
    }
}

- (UIFont *)ch_titleFont {
    id font = objc_getAssociatedObject(self, ch_titleFontKey);
    if (font == nil) {
        return [UIFont systemFontOfSize:15];
    } else {
        return font;
    }
}

- (UIColor *)ch_messageColor {
    id color = objc_getAssociatedObject(self, ch_messageColorKey);
    if (color == nil) {
        return [UIColor darkGrayColor];
    } else {
        return color;
    }
}

- (UIFont *)ch_messageFont {
    id font = objc_getAssociatedObject(self, ch_messageFontKey);
    if (font == nil) {
        return [UIFont systemFontOfSize:13];
    } else {
        return font;
    }
}

@end
