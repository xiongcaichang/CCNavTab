//
//  TabController.m
//  Myproject
//
//  Created by bear on 15/11/22.
//  Copyright © 2015年 bear. All rights reserved.
//

#import "CCNavTabController.h"
#import "CCNavigationController.h"


@interface CCNavTabController ()<CCTabBarDelegate>

@end

@implementation CCNavTabController

- (void)viewDidLoad



{

    // 1.添加TabBar

    [super viewDidLoad];
    [self addTabBar];


}






#pragma mark 添加TabBar
- (void)addTabBar
{
    
    CCTabBar *tabBar = [[CCTabBar alloc] initWithFrame:self.tabBar.bounds];

    tabBar.delegate=self;
    [self.tabBar addSubview:tabBar];
    _tabBar=tabBar;

}


- (void)viewWillAppear:(BOOL)animated
{
    // 调用系统默认的做法:添加UITabBarButton
    [super viewWillAppear:animated];

    // 删除self.tabBar中的子控件除了自定义tabBar
    for (UIView *childView in self.tabBar.subviews) {
        if (![childView isKindOfClass:[CCTabBar class]]) { // 不是自己的tabBar

            [childView removeFromSuperview];
        }

    }
}


#pragma mark dock的代理方法
- (void)tabbar:(CCTabBar *)tabbar to:(NSInteger)to{


    if (to < 0 || to >= self.childViewControllers.count||self.selectedIndex==to) return;

    // 1.取出即将显示的控制器
    UIViewController *newVc = self.childViewControllers[to];
    CGFloat width = self.view.frame.size.width;
    CGFloat height=height = self.view.frame.size.height;

    newVc.view.frame = CGRectMake(0,0, width, height);

    //改变选中状态
    self.selectedIndex=to;

    //将tabbar  前置
    [self.view bringSubviewToFront:_tabBar];

}





-(void)setChildControllerAndIconArr:(NSArray *)childControllerAndIconArr{

    _childControllerAndIconArr=childControllerAndIconArr;
    for (NSInteger i = 0; i < childControllerAndIconArr.count; i++) {

        //添加控制器
        NSDictionary *dict=childControllerAndIconArr[i];
        CCNavigationController *nav=[[CCNavigationController alloc]initWithRootViewController:dict[@"VC"]];
        [self addChildViewController:nav];
        //添加字典
        [_tabBar addItemWithIcon:dict[@"ICONOR"] selectedIcon:dict[@"ICONSE"] title:dict[@"TITLE"]];


    }
}



@end


