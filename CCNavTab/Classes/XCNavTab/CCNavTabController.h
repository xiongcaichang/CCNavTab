//
//  TabController.h
//  Myproject
//
//  Created by bear on 15/11/22.
//  Copyright © 2015年 bear. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CCTabBar.h"



#define VIEWCONTROLLER @"VC"

#define NORMAL_ICON @"ICONOR"

#define  SELECTED_ICON @"ICONSE"

#define TITLE @"TITLE"


@interface CCNavTabController :UITabBarController{
    @public

    CCTabBar *_tabBar;
}


@property (nonatomic, strong) NSArray *childControllerAndIconArr;

@end
