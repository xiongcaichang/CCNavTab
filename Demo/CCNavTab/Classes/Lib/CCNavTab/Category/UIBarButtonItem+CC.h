//
//  UIBarButtonItem+XCC.m
//  XCNavTab
//  url:https://github.com/xiongcaichang/CCNavTab
//  Created by bear on 16/3/31.
//  Copyright © 2016年 bear. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (CC)
/**
 * 快速创建item
 */
+ (UIBarButtonItem *)itemWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action;

@end
