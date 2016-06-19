//
//  UIBarButtonItem+XCC.m
//  XCNavTab
//  url:https://github.com/xiongcaichang/CCNavTab
//  Created by bear on 16/3/31.
//  Copyright © 2016年 bear. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CCTabBar.h"



#define VIEWCONTROLLER @"VC"

#define NORMAL_ICON @"ICONOR"

#define  SELECTED_ICON @"ICONSE"

#define TITLE @"TITLE"


@interface CCTabController :UITabBarController{
    @public

    CCTabBar *_tabBar;
}



//子控制器信息数组
@property (nonatomic, strong) NSArray *childControllerAndIconArr;


/**
 配置导航栏的颜色/图片
 注意:当背景颜色设置时图片不生效 navigationBarBackgroundColor navigationBarBackgroundImage一般二选其一  默认为系统白色
 */
@property (nonatomic, strong) UIColor *navigationBarBackgroundColor;

@property (nonatomic, strong) UIImage *navigationBarBackgroundImage;

/**
 可选配置
 导航栏文字颜色  Title  和 BarButtonItem  默认为黑色
 */
@property (nonatomic, strong) UIColor *navigationBarTintColor;


@end
