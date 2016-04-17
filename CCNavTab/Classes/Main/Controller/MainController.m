//
//  MainController.m
//  XCNavTabDemo
//
//  Created by bear on 16/3/29.
//  Copyright © 2016年 bear. All rights reserved.
//

#import "MainController.h"
    //准备工作  导入头文件
#import "OneController.h"
#import "TwoController.h"

@interface MainController ()

@end

@implementation MainController

- (void)viewDidLoad {
    [super viewDidLoad];


    //----------1.第一步:配置导航栏的颜色    我这里使用的是随机色---------------------------------//
    self.navigationBackgroundColor=[UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1];


    //----------2.第二步:添加子控制器配置数组   可以添加任意个,但是最好不要超过6个---------------------------------//
    self.childControllerAndIconArr=@[
                                     /************第一个控制器配置信息*********************/
                                     @{
                                         VIEWCONTROLLER : [[OneController alloc]init],  //控制器对象
                                         NORMAL_ICON : @"icon_classTable",             //正常状态的Icon 名称
                                         SELECTED_ICON : @"icon_classTable_selected",  //选中状态的Icon 名称
                                         TITLE : @"表"                                 //Nav和Tab的标题
                                         },
                                     /************第二个控制器配置信息*********************/
                                     @{
                                         VIEWCONTROLLER : [[TwoController alloc]init],
                                         NORMAL_ICON : @"icon_me",
                                         SELECTED_ICON : @"icon_me_selected",
                                         TITLE : @"校园"
                                         },
                                     ];


}



@end
