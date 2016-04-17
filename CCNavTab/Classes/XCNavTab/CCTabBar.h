//
//  CCTabBar.h
//  CCNavTab
//  url:https://github.com/xiaocaiabc/CCNavTab
//  Created by bear on 15/11/19.
//  Copyright © 2015年 bear. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CCTabItem.h"

#define kTabBarHeight 49

@class CCTabBar;


//item点击事件的代理
@protocol CCTabBarDelegate <NSObject>

@optional
-(void)tabbar:(CCTabBar *)tabbar to:(NSInteger)to;

@end


@interface CCTabBar : UIView

@property (nonatomic, weak) CCTabItem *selectedItem;

-(void)addItemWithIcon:(NSString *)icon  selectedIcon:(NSString *)icon_selected title:(NSString *)title;

@property (nonatomic,weak) id<CCTabBarDelegate> delegate;

@end

