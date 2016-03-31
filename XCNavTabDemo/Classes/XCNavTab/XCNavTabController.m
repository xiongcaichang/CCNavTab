//
//  XCTabController.m
//  XCNavTab
//  url:https://github.com/xiaocaiabc/XCNavTab
//  Created by bear on 15/11/22.
//  Copyright © 2015年 bear. All rights reserved.
//

#import "XCNavTabController.h"
#import "XCNavigationController.h"


@interface XCNavTabController ()<XCTabBarDelegate>

@end

@implementation XCNavTabController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // 初始化TabBar
    [self initTabBar];


}


- (void)viewWillAppear:(BOOL)animated
{
    // 调用系统默认的做法:添加UITabBarButton
    [super viewWillAppear:animated];

    // 删除self.tabBar中的子控件除了自定义tabBar
    for (UIView *childView in self.tabBar.subviews) {
        if (![childView isKindOfClass:[XCTabBar class]]) { // 不是自己的tabBar

            [childView removeFromSuperview];
        }
        
    }
    
}



#pragma mark 初始化TabBar
- (void)initTabBar
{
    
    XCTabBar *tabBar = [[XCTabBar alloc] initWithFrame:self.tabBar.bounds];

    tabBar.delegate=self;

    [self.tabBar addSubview:tabBar];
    
    _tabBar=tabBar;

}




#pragma mark tabBar的代理方法
- (void)tabbar:(XCTabBar *)tabbar to:(NSInteger)to{

    if (to < 0 || to >= self.childViewControllers.count||self.selectedIndex==to) return;

    UIViewController *newVc = self.childViewControllers[to];

    CGFloat width = self.view.frame.size.width;

    CGFloat height=height = self.view.frame.size.height;

    newVc.view.frame = CGRectMake(0,0, width, height);

    self.selectedIndex=to;

    [self.view bringSubviewToFront:_tabBar];

}





-(void)setChildControllerAndIconArr:(NSArray *)childControllerAndIconArr{

    _childControllerAndIconArr=childControllerAndIconArr;

    //遍历配置字典
    for (NSInteger i = 0; i < childControllerAndIconArr.count; i++) {

        //取出字典
        NSDictionary *dict=childControllerAndIconArr[i];

        XCNavigationController *nav=[[XCNavigationController alloc]initWithRootViewController:[dict objectForKey:VIEWCONTROLLER]];

        [self addChildViewController:nav];

        [nav.navigationBar setBarTintColor:self.navigationBackgroundColor];

        [_tabBar addItemWithIcon:[dict objectForKey:NORMAL_ICON] selectedIcon:[dict objectForKey:SELECTED_ICON]  title:[dict objectForKey:TITLE]];

    }
}




-(void)setNavigationBackgroundColor:(UIColor *)navigationBackgroundColor{
    _navigationBackgroundColor=navigationBackgroundColor;
}


@end


