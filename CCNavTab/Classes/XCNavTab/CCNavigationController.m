//
//  CCNavigationController.m
//  hedaAssistant
//  url:https://github.com/xiaocaiabc/CCNavTab
//  Created by bear on 16/3/24.
//  Copyright © 2016年 bear. All rights reserved.
//

#import "CCNavigationController.h"
#import "UINavigationItem+custom.h"
#import "UIBarButtonItem+XCC.h"


#define  CCTabBarNotifacationIsHiden @"CCTabBarHiden"

@interface CCNavigationController ()<UINavigationControllerDelegate>



@end

@implementation CCNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];



    [self.navigationItem.backBarButtonItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]} forState:UIControlStateNormal];

    [self.navigationBar setTintColor:[UIColor whiteColor]];

}





- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{



    // self - 导航控制器
    if (self.viewControllers.count) { // 不是根控制器



        // push的时候隐藏底部条
        viewController.hidesBottomBarWhenPushed = YES;

    }


    // 调用系统默认做法,因为只有系统才知道怎么做push
    [super pushViewController:viewController animated:animated];
}









@end
