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

@property (nonatomic, strong) UIColor *navigationBarBackgroundColor;

@property (nonatomic, strong) UIImage *navigationBarBackgroundImage;

@property (nonatomic, strong) UIColor *navigationBarTintColor;


@end
