//
//  UIPageControl+CHPropertyAdd.m
//  CHUIKitCategories-Demo
//
//  Created by 张晨晖 on 2018/9/19.
//  Copyright © 2018年 张晨晖. All rights reserved.
//

#import "UIPageControl+CHPropertyAdd.h"

@implementation UIPageControl (CHPropertyAdd)

#define DefaultDotDiameter 5

@dynamic ch_currentPageImage;
@dynamic ch_pageImage;

static NSString *ch_currentPageImageKey = @"currentPageImage";
static NSString *ch_pageImageKey = @"pageImage";

#pragma mark setter

- (void)setCh_currentPageImage:(UIImage *)ch_currentPageImage {
    [self setValue:ch_currentPageImage forKey:ch_currentPageImageKey];
}

- (void)setCh_pageImageKey:(UIImage *)ch_pageImage {
    [self setValue:ch_pageImage forKey:ch_pageImageKey];
}

#pragma mark getter

- (UIImage *)ch_currentPageImage {
    return [self valueForKey:ch_currentPageImageKey];
}

- (UIImage *)ch_pageImage {
    return [self valueForKey:ch_pageImageKey];
}

@end
