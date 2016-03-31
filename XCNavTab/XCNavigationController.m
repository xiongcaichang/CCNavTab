//
//  XCNavigationController.m
//  hedaAssistant
//  url:https://github.com/xiaocaiabc/XCNavTab
//  Created by bear on 16/3/24.
//  Copyright © 2016年 bear. All rights reserved.
//

#import "XCNavigationController.h"
#import "UINavigationItem+custom.h"
#import "UIBarButtonItem+XCC.h"


#define  XCTabBarNotifacationIsHiden @"XCTabBarHiden"

@interface XCNavigationController ()<UINavigationControllerDelegate>

@property (nonatomic, strong) id popDelegate;

@end

@implementation XCNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];

    _popDelegate = self.interactivePopGestureRecognizer.delegate;


}



// 将要显示viewController这个控制器的时候调用
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    // 只要覆盖了导航条系统自带的左边按钮,这个代理就会做些事情
    // 实现滑动返回功能
    // 直接删除,系统的某些相当于不会调用
    if (viewController == self.viewControllers[0]) { // 是根控制器
        self.interactivePopGestureRecognizer.delegate = _popDelegate;
    }else{
        self.interactivePopGestureRecognizer.delegate = nil;

    }
}


- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{



    // self - 导航控制器
    if (self.viewControllers.count) { // 不是根控制器

        // 设置One控制器的导航条
        // 设置左边的按钮
        UIBarButtonItem *popPre = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"XCBack.png"] highImage:[UIImage imageNamed:@"XCBack.png"] target:self action:@selector(popPre)];

        // 设置导航条的左边按钮
        viewController.navigationItem.leftBarButtonItem = popPre;

        // 设置右边的按钮
        UIBarButtonItem *popRoot = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"XChome.png"] highImage:[UIImage imageNamed:@"XChome.png"] target:self action:@selector(popRoot)];

        // 设置导航条的按钮
        viewController.navigationItem.rightBarButtonItem = popRoot;

        // push的时候隐藏底部条
        viewController.hidesBottomBarWhenPushed = YES;

    }


    // 调用系统默认做法,因为只有系统才知道怎么做push
    [super pushViewController:viewController animated:animated];
}




- (void)popPre
{

    // 回到上一个控制器
    [self popViewControllerAnimated:YES];
}


- (void)popRoot
{
    // 回到根控制器控制器


    [self popToRootViewControllerAnimated:YES];
}







@end
