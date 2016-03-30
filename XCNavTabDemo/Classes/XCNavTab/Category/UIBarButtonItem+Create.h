//
//  UIBarButtonItem+Create.h
//  新浪微博
//
//  Created by apple on 14/11/21.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Create)
/**
 * 快速创建item
 */
+ (UIBarButtonItem *)itemWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action;

@end
