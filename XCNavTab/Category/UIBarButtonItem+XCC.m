//
//  UIBarButtonItem+XCC.m
//  XCNavTab
//  url:https://github.com/xiaocaiabc/XCNavTab
//  Created by bear on 16/3/31.
//  Copyright © 2016年 bear. All rights reserved.
//

#import "UIBarButtonItem+XCC.h"

@implementation UIBarButtonItem (XCC)

+ (UIBarButtonItem *)itemWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:image forState:UIControlStateNormal];
    [button setBackgroundImage:highImage forState:UIControlStateHighlighted];
    [button setFrame:CGRectMake(0, 0, 44, 44)];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return  [[UIBarButtonItem alloc] initWithCustomView:button];

}

@end
