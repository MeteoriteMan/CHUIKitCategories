//
//  UITextView+CHPropertyAdd.m
//  CHUIKitCategories-Demo
//
//  Created by 张晨晖 on 2018/9/6.
//  Copyright © 2018年 张晨晖. All rights reserved.
//

#import "UITextView+CHPropertyAdd.h"
#import <objc/runtime.h>
#import <objc/message.h>

@implementation UITextView (CHPropertyAdd)

@dynamic ch_placeholderAttributedString;
@dynamic ch_placeholderText;
@dynamic ch_placeholderFont;
@dynamic ch_placeholderTextColor;

//static char *ch_placeholderAttributedStringKey = "ch_placeholderAttributedStringKey";
static char *ch_placeholderTextKey = "ch_placeholderTextKey";
static char *ch_placeholderFontKey = "ch_placeholderFontKey";
static char *ch_placeholderTextColorKey = "ch_placeholderTextColorKey";

static NSString *setAttributedPlaceholderMethodKey = @"setAttributedPlaceholder:";
static NSString *getAttributedPlaceholderKeyMethodKey = @"attributedPlaceholder";

#pragma mark setter

- (void)setCh_placeholderAttributedString:(NSAttributedString *)ch_placeholderAttributedString {
    ((void(*)(id ,SEL ,NSAttributedString *))objc_msgSend)(self , NSSelectorFromString(setAttributedPlaceholderMethodKey) ,ch_placeholderAttributedString);
}

- (void)setCh_placeholderText:(NSString *)ch_placeholderText {
    objc_setAssociatedObject(self, ch_placeholderTextKey, ch_placeholderText, OBJC_ASSOCIATION_RETAIN);
    NSAttributedString *ch_placeholderAttributedString = [[NSAttributedString alloc] initWithString:ch_placeholderText attributes:@{NSForegroundColorAttributeName:self.ch_placeholderTextColor,NSFontAttributeName:self.ch_placeholderFont}];
    [self setCh_placeholderAttributedString:ch_placeholderAttributedString];
}

- (void)setCh_placeholderFont:(UIFont *)ch_placeholderFont {
    objc_setAssociatedObject(self, ch_placeholderFontKey, ch_placeholderFont, OBJC_ASSOCIATION_RETAIN);
    NSAttributedString *ch_placeholderAttributedString = [[NSAttributedString alloc] initWithString:self.ch_placeholderText attributes:@{NSForegroundColorAttributeName:self.ch_placeholderTextColor,NSFontAttributeName:ch_placeholderFont}];
    [self setCh_placeholderAttributedString:ch_placeholderAttributedString];
}

- (void)setCh_placeholderTextColor:(UIColor *)ch_placeholderTextColor {
    objc_setAssociatedObject(self, ch_placeholderTextColorKey, ch_placeholderTextColor, OBJC_ASSOCIATION_RETAIN);
    NSAttributedString *ch_placeholderAttributedString = [[NSAttributedString alloc] initWithString:self.ch_placeholderText attributes:@{NSForegroundColorAttributeName:self.ch_placeholderTextColor,NSFontAttributeName:ch_placeholderTextColor}];
    [self setCh_placeholderAttributedString:ch_placeholderAttributedString];
}

#pragma mark getter

- (NSAttributedString *)ch_placeholderAttributedString {
    return ((NSAttributedString *(*)(id ,SEL))objc_msgSend)(self , NSSelectorFromString(getAttributedPlaceholderKeyMethodKey));
}

- (NSString *)ch_placeholderText {
    id ch_placeholderText = objc_getAssociatedObject(self, ch_placeholderTextKey);
    if (ch_placeholderText) {
        return ch_placeholderText;
    } else {
        return @"";
    }
}

- (UIFont *)ch_placeholderFont {
    id ch_placeholderFont = objc_getAssociatedObject(self, ch_placeholderFontKey);
    if (ch_placeholderFont) {
        return ch_placeholderFont;
    } else {
        return self.font;
    }
}

- (UIColor *)ch_placeholderTextColor {
    id ch_placeholderTextColor = objc_getAssociatedObject(self, ch_placeholderTextColorKey);
    if (ch_placeholderTextColor) {
        return ch_placeholderTextColor;
    } else {
        return [UIColor darkGrayColor];
    }
}

@end
