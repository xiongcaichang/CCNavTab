//
//  UIBarButtonItem+CC.m
//  CCNavTab
//  url:https://github.com/xiongcaichang/CCNavTab
//  Created by bear on 16/3/31.
//  Copyright © 2016年 bear. All rights reserved.
//
#import "CCTabController.h"
#import "CCNavigationController.h"
#import "CCTabItem.h"


@interface CCTabController ()<CCTabBarDelegate>




@end

@implementation CCTabController


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
        if (![childView isKindOfClass:[CCTabBar class]] && ![childView isKindOfClass:[UIImageView class]]) { // 不是自己的tabBar
            
            [childView removeFromSuperview];
        }
        
    }
    
}



#pragma mark 初始化TabBar
- (void)initTabBar
{
    
    CCTabBar *tabBar = [[CCTabBar alloc] initWithFrame:self.tabBar.bounds];
    
    tabBar.delegate=self;
    
    [self.tabBar addSubview:tabBar];
    
    _tabBar=tabBar;
    
}




#pragma mark tabBar的代理方法
- (void)tabbar:(CCTabBar *)tabbar to:(NSInteger)to{
    
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
        
        
        
        UIViewController *vc = [dict objectForKey:VIEWCONTROLLER];
        
        
        [vc addObserver:self forKeyPath:@"tabBarItem.badgeValue" options:NSKeyValueObservingOptionNew context:NULL];
        

        CCNavigationController *nav=[[CCNavigationController alloc]initWithRootViewController:vc];
        
        [vc setTitle:[dict objectForKey:TITLE]];
        
        [self addChildViewController:nav];
        
        
        if (self.navigationBarBackgroundColor  ==  nil) {
            
            [nav.navigationBar setBackgroundImage:self.navigationBarBackgroundImage forBarMetrics:UIBarMetricsDefault];
            
        }else{
            
            [nav.navigationBar setBarTintColor:self.navigationBarBackgroundColor];
            
        }
        
        
        [nav.navigationBar setTintColor:self.navigationBarTintColor];
        
        [nav.navigationItem.backBarButtonItem setTitleTextAttributes:@{NSForegroundColorAttributeName:self.navigationBarTintColor} forState:UIControlStateNormal];
        
        nav.navigationBar.titleTextAttributes=@{NSForegroundColorAttributeName:self.navigationBarTintColor};
        
        
        
        
        [_tabBar addItemWithIcon:[dict objectForKey:NORMAL_ICON] selectedIcon:[dict objectForKey:SELECTED_ICON]  title:[dict objectForKey:TITLE]];
        
    }
}




-(UIColor *)navigationBarTintColor{
    if (!_navigationBarTintColor) {
        _navigationBarTintColor = [UIColor blackColor];
    }
    
    return _navigationBarTintColor;
}


-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
    if ([keyPath isEqualToString:@"tabBarItem.badgeValue"]) {
        
        //遍历配置字典
        for (NSInteger i = 0; i < self.childControllerAndIconArr.count; i++) {
            
            //取出字典
            NSDictionary *dict=self.childControllerAndIconArr[i];
            
            UIViewController *vc = [dict objectForKey:VIEWCONTROLLER];
            
            if ([vc isEqual:object]) {
                
                for (CCTabItem *item in _tabBar.subviews) {
                    if (item.tag==i) {
                        if ([change[@"new"] isEqualToString:@"0"]) {
                            item.bageView.hidden=YES;
                        }else{
                            item.bageView.hidden=NO;
                            item.bageView.text=change[@"new"];
                        }
 
                    }
                }
            }
            
            
        }
    }
    
}


-(void)dealloc{
    for (NSInteger i = 0; i < self.childControllerAndIconArr.count; i++) {
        
        NSDictionary *dict=self.childControllerAndIconArr[i];
        
        UIViewController *vc = [dict objectForKey:VIEWCONTROLLER];
        [vc removeObserver:self forKeyPath:@"tabBarItem.badgeValue"];
    }
    
}

@end


