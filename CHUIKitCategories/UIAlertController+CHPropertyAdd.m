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
@dynamic ch_attributedTitle;
@dynamic ch_attributedMessage;
@dynamic ch_attributedDetailMessage;
@dynamic ch_actions;

static char *ch_titleColorKey = "ch_titleColorKey";
static char *ch_titleFontKey = "ch_titleFontKey";
static char *ch_messageColorKey = "ch_messageColorKey";
static char *ch_messageFontKey = "ch_messageFontKey";
static char *ch_attributedTitleKey = "ch_attributedTitleKey";
static char *ch_attributedMessageKey = "ch_attributedMessageKey";
static char *ch_attributedDetailMessageKey = "ch_attributedDetailMessageKey";
static char *ch_actionsKey = "ch_actionsKey";

/// 系统的私有属性
static NSString *attributedTitleKey = @"attributedTitle";
static NSString *attributedMessageKey = @"attributedMessage";
static NSString *attributedDetailMessageKey = @"attributedDetailMessage";
static NSString *actionsKey = @"actions";
//static NSString *titleMaximumLineCountKey = @"titleMaximumLineCount";
//static NSString *titleLineBreakModeKey = @"titleLineBreakMode";

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

- (void)setCh_attributedTitle:(NSAttributedString *)ch_attributedTitle {
    objc_setAssociatedObject(self, ch_attributedTitleKey, ch_attributedTitle, OBJC_ASSOCIATION_RETAIN);
    [self setValue:ch_attributedTitle forKey:attributedTitleKey];
}

- (void)setCh_attributedMessage:(NSAttributedString *)ch_attributedMessage {
    objc_setAssociatedObject(self, ch_attributedMessageKey, ch_attributedMessage, OBJC_ASSOCIATION_RETAIN);
    [self setValue:ch_attributedMessage forKey:attributedMessageKey];
}

- (void)setCh_attributedDetailMessage:(NSAttributedString *)ch_attributedDetailMessage {
    objc_setAssociatedObject(self, ch_attributedDetailMessageKey, ch_attributedDetailMessage, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self setValue:ch_attributedDetailMessage forKey:attributedDetailMessageKey];
}

- (void)setCh_actions:(NSArray *)ch_actions {
    objc_setAssociatedObject(self, ch_actionsKey, ch_actions, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self setValue:ch_actions forKey:actionsKey];
}

#pragma mark getter

- (UIColor *)ch_titleColor {
    id ch_titleColor = objc_getAssociatedObject(self, ch_titleColorKey);
    if (ch_titleColor) {
        return ch_titleColor;
    } else {
        return [UIColor darkTextColor];
    }
}

- (UIFont *)ch_titleFont {
    id ch_titleFont = objc_getAssociatedObject(self, ch_titleFontKey);
    if (ch_titleFont) {
        return ch_titleFont;
    } else {
        return [UIFont systemFontOfSize:15];
    }
}

- (UIColor *)ch_messageColor {
    id ch_messageColor = objc_getAssociatedObject(self, ch_messageColorKey);
    if (ch_messageColor) {
        return ch_messageColor;
    } else {
        return [UIColor darkGrayColor];
    }
}

- (UIFont *)ch_messageFont {
    id ch_messageFont = objc_getAssociatedObject(self, ch_messageFontKey);
    if (ch_messageFont) {
        return ch_messageFont;
    } else {
        return [UIFont systemFontOfSize:13];
    }
}

- (NSAttributedString *)ch_attributedTitle {
    id ch_attributedTitle = objc_getAssociatedObject(self, ch_attributedTitleKey);
    if (ch_attributedTitle) {
        return ch_attributedTitle;
    } else {
        return [self valueForKey:attributedTitleKey];
    }
}

- (NSAttributedString *)ch_attributedMessage {
    id ch_attributedMessage = objc_getAssociatedObject(self, ch_attributedMessageKey);
    if (ch_attributedMessage) {
        return ch_attributedMessage;
    } else {
        return [self valueForKey:attributedMessageKey];
    }
}

- (NSAttributedString *)ch_attributedDetailMessage {
    id ch_attributedDetailMessage = objc_getAssociatedObject(self, ch_attributedDetailMessageKey);
    if (ch_attributedDetailMessage) {
        return ch_attributedDetailMessage;
    } else {
        return [self valueForKey:attributedDetailMessageKey];
    }
}

- (NSArray *)ch_actions {
    id ch_actions = objc_getAssociatedObject(self, ch_actionsKey);
    if (ch_actions) {
        return ch_actions;
    } else {
        return [self valueForKey:actionsKey];
    }
}

@end
