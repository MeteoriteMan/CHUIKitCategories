//
//  UISearchBar+CHPropertyAdd.m
//  CHUIKitCategories-Demo
//
//  Created by 张晨晖 on 2018/9/12.
//  Copyright © 2018年 张晨晖. All rights reserved.
//

#import "UISearchBar+CHPropertyAdd.h"

@implementation UISearchBar (CHPropertyAdd)

@dynamic ch_searchField;
@dynamic ch_cancelButton;
@dynamic ch_background;

static NSString *searchFieldKey = @"searchField";
static NSString *cancelButtonKey = @"cancelButton";
static NSString *backgroundKey = @"background";

#pragma mark setter

- (void)setCh_searchField:(UITextField *)ch_searchField {
    [self setValue:ch_searchField forKey:searchFieldKey];
}

- (void)setCh_cancelButton:(UIButton *)ch_cancelButton {
    [self setValue:ch_cancelButton forKey:cancelButtonKey];
}

- (void)setCh_background:(UIView *)ch_background {
    [self setValue:ch_background forKey:backgroundKey];
}

#pragma mark getter

- (UITextField *)ch_searchField {
    return [self valueForKey:searchFieldKey];
}

- (UIButton *)ch_cancelButton {
    return [self valueForKey:cancelButtonKey];
}

- (UIView *)ch_background {
    return [self valueForKey:backgroundKey];
}

@end
