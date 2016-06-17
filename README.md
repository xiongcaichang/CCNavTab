# CC NavTab



## CCNavTab  快速搭建  IOS  UI  主流框架  


>  Pod  导入

```
 pod 'CCNavTab'
 ```

> 传统使用方法
	新建工程,讲 CCNavTab 的demo  的 Lib  文件夹拖入您的项目
	
	
	
 1.新建主控制器  MainController  继承自 CCTabController 在   MainController 的  viewDidLoad 方法中
	

>可选配置

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

>配置数组  VIEWCONTROLLER  除下面代码创建方式外外可从storyboard 加载
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





### 截图


<img src="https://github.com/xiongcaichang/CCNavTab/blob/master/demo.png" alt="Drawing" width="300px" />

