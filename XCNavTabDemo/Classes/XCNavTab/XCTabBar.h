//
//  TabBar.h
//  Myproject
//
//  Created by bear on 15/11/19.
//  Copyright © 2015年 bear. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XCTabItem.h"

#define kTabBarHeight 49

@class XCTabBar;



@protocol XCTabBarDelegate <NSObject>

@optional
-(void)tabbar:(XCTabBar *)tabbar to:(NSInteger)to;

@end




@interface XCTabBar : UIView

@property (nonatomic, weak) XCTabItem *selectedItem;

//添加tab按钮的方法
-(void)addItemWithIcon:(NSString *)icon  selectedIcon:(NSString *)icon_selected title:(NSString *)title;

@property (nonatomic,weak) id<XCTabBarDelegate> delegate;

@end

