//
//  UIBarButtonItem+XCC.m
//  CCNavTab
//  url:https://github.com/xiongcaichang/CCNavTab
//  Created by bear on 16/3/31.
//  Copyright © 2016年 bear. All rights reserved.
//

#import "CCTabBar.h"
#import "CCTabItem.h"

@implementation CCTabBar


- (void)addItemWithIcon:(NSString *)icon selectedIcon:(NSString *)selected title:(NSString *)title
{
    // 1.创建item
    CCTabItem *item = [[CCTabItem alloc] init];
    

    // 文字
    [item setTitle:title forState:UIControlStateNormal];
    item.titleLabel.textColor=[UIColor lightGrayColor];

    // 图标
    [item setImage:[UIImage imageNamed:icon] forState:UIControlStateNormal];
    [item setImage:[UIImage imageNamed:selected] forState:UIControlStateSelected];

    // 监听item的点击
    [item addTarget:self action:@selector(itemClick:) forControlEvents:UIControlEventTouchDown];

    // 2.添加item
    [self addSubview:item];
    NSInteger count = self.subviews.count;
    
    // 默认选中第一个item
    if (count == 1) {
        [self itemClick:item];
    }

    // 3.调整所有item的frame
    CGFloat height = self.frame.size.height; // 高度
    CGFloat width = self.frame.size.width / count; // 宽度
    for (int i = 0; i<count; i++) {
        CCTabItem *tabItem = self.subviews[i];
        tabItem .tag = i; // 绑定标记
        tabItem .frame = CGRectMake(width * i, 0, width, height);
    }
}

#pragma mark 监听item点击
- (void)itemClick:(CCTabItem *)item
{

      // 0.通知代理
    if ([_delegate respondsToSelector:@selector(tabbar:to:)]) {
        [_delegate tabbar:self to:item.tag ];
    }

      // 1.取消选中当前选中的item
      _selectedItem.selected = NO;

      // 2.选中点击的item
      item.selected = YES;

      // 3.赋值
      _selectedItem = item;
}





@end
