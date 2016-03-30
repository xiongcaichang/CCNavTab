//
//  UIBarButtonItem+custom.m
//  Myproject
//
//  Created by bear on 15/11/21.
//  Copyright © 2015年 bear. All rights reserved.
//

#import "UIBarButtonItem+custom.h"

@implementation UIBarButtonItem (custom)

- (id)initWithIcon:(NSString *)icon highlightedIcon:(NSString *)highlighted target:(id)target action:(SEL)action
{
    // 创建按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];

    // 设置普通背景图片
    UIImage *image = [UIImage imageNamed:icon];
    [btn setBackgroundImage:image forState:UIControlStateNormal];

    // 设置高亮图片
    [btn setBackgroundImage:[UIImage imageNamed:highlighted] forState:UIControlStateHighlighted];

    // 设置尺寸
    btn.bounds = (CGRect){CGPointZero, image.size};

    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];

    return [self initWithCustomView:btn];
}

+ (id)itemWithIcon:(NSString *)icon highlightedIcon:(NSString *)highlighted target:(id)target action:(SEL)action
{
    return [[self alloc] initWithIcon:icon highlightedIcon:highlighted target:target action:action];
}
@end
