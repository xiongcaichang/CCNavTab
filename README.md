# CCNavTab  快速搭建  IOS  UI  主流框架  



[![Build Status](http://img.shields.io/travis/rs/CCNavTab/master.svg?style=flat)](https://travis-ci.org/rs/CCNavTab)
[![Pod Version](http://img.shields.io/cocoapods/v/CCNavTab.svg?style=flat)](http://cocoadocs.org/docsets/CCNavTab/)
[![Pod Platform](http://img.shields.io/cocoapods/p/CCNavTab.svg?style=flat)](http://cocoadocs.org/docsets/CCNavTab/)
[![Pod License](http://img.shields.io/cocoapods/l/CCNavTab.svg?style=flat)](https://www.apache.org/licenses/LICENSE-2.0.html)
[![Dependency Status](https://www.versioneye.com/objective-c/CCNavTab/3.3/badge.svg?style=flat)](https://www.versioneye.com/objective-c/CCNavTab/3.3)
[![Support](https://img.shields.io/badge/support-iOS%206%2B%20-blue.svg?style=flat)](https://www.apple.com/nl/ios/)&nbsp;

##安装
*  cocopods 

```
 pod 'CCNavTab'
 ```

* 传统使用方法
	新建工程,将 Lib  文件夹拖入您的项目
	
	
##使用

 1.新建主控制器  MainController  继承自 CCTabController 在   MainController 的  viewDidLoad 方法中
	

* 可选配置

```objc

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
    
```

  2.第二步:添加子控制器配置数组    

* 配置数组  VIEWCONTROLLER  除下面代码创建方式外外可从storyboard 加载


``` objc
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


```



* bageView 使用  和系统一样,当为   @"0"   时则隐藏

```objc

       self.tabBarItem.badgeValue=@"6";

```



### 截图


<img src="https://github.com/xiongcaichang/CCNavTab/blob/master/demoCapture.gif" alt="Drawing" width="300px" />

>Addtion

如果您有好的建议和更改意见可以 issue  或者直接将 更改后的代码 pull request给我,让我们一起共同探讨学习

