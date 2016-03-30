//
//  AppDelegate.m
//  XCNavTabDemo
//
//  Created by bear on 16/3/29.
//  Copyright © 2016年 bear. All rights reserved.
//

#import "AppDelegate.h"
#import "MainController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];


    MainController *mainVc=[[MainController alloc]init];

    self.window.rootViewController=mainVc;

    //设置为主控制器并可见
    [self.window makeKeyAndVisible];

    return YES;
}



@end
