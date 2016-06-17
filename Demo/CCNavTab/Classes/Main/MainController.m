//
//  UIBarButtonItem+XCC.m
//  XCNavTab
//  url:https://github.com/xiongcaichang/CCNavTab
//  Created by bear on 16/3/31.
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
    

    /**
     配置导航栏的颜色/图片
     注意:当背景颜色设置时图片不生效 一般二选其一  默认为系统白色
    */
    self.navigationBarBackgroundColor=[UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1];
    
    //self.navigationBarBackgroundImage = [UIImage imageNamed:@"background"] ;
    
    
    /**
     可选配置
     导航栏文字颜色  Title  和 BarButtonItem  默认为黑色
     */
    self.navigationBarTintColor = [UIColor whiteColor];
    


    /**
     .第二步: 初始化控制器 添加子控制器配置数组   可以添加任意个,但是最好不要超过6个
     
    */
    
    OneController *oneVC = [[OneController alloc]init];//
    
    TwoController *twoVC = [[TwoController alloc]init];
    
//    以上也可控制器可从 StoryBord 加载
//    1.初始化“初始控制器”（storyboard中箭头所指的控制器）

    
    
    self.childControllerAndIconArr=@[
                                     /************第一个控制器配置信息*********************/
                                     @{
                                         VIEWCONTROLLER :oneVC,  //控制器对象
                                         NORMAL_ICON : @"icon_classTable",             //正常状态的Icon 名称
                                         SELECTED_ICON : @"icon_classTable_selected",  //选中状态的Icon 名称
                                         TITLE : @"表"                                 //Nav和Tab的标题
                                         },
                                     /************第二个控制器配置信息*********************/
                                     @{
                                         VIEWCONTROLLER : twoVC,
                                         NORMAL_ICON : @"icon_me",
                                         SELECTED_ICON : @"icon_me_selected",
                                         TITLE : @"校园"
                                         },
                                     ];
    

}



@end
