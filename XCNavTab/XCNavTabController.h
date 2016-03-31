//
//  XCTabController.h
//  XCNavTab
//  url:https://github.com/xiaocaiabc/XCNavTab
//  Created by bear on 16/02/25.
//  Copyright © 2015年 bear. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XCTabBar.h"



#define VIEWCONTROLLER @"VC"

#define NORMAL_ICON @"ICONOR"

#define  SELECTED_ICON @"ICONSE"

#define TITLE @"TITLE"


@interface XCNavTabController :UITabBarController{
    @public

    XCTabBar *_tabBar;
}



//子控制器信息数组
@property (nonatomic, strong) NSArray *childControllerAndIconArr;

@property (nonatomic, strong) UIColor *navigationBackgroundColor;


@end
