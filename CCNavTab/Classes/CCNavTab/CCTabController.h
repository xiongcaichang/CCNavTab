//
//  CCTabController.h
//  CCNavTab
//  url:https://github.com/xiaocaiabc/CCNavTab
//  Created by bear on 16/02/25.
//  Copyright © 2015年 bear. All rights reserved.
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

@property (nonatomic, strong) UIColor *navigationBackgroundColor;


@end
