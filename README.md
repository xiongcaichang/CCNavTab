# CC NavTab



> CCNavTab  快速搭建  IOS  UI  主流框架  

1. 使用方法
	新建工程,讲 CCNavTab 的demo  的 Lib  文件夹拖入您的项目
2. 新建主控制器  MainController  继承自 CCTabController
	在   MainController 的  viewDidLoad 方法中
	
	```
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
```


>  截图


<img src="https://github.com/xiongcaichang/CCNavTab/blob/master/demo.png" alt="Drawing" width="300px" />

