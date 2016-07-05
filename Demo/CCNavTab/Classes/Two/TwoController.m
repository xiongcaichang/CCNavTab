//
//  TwoController.m
//  XCNavTabDemo
//
//  Created by bear on 16/3/29.
//  Copyright © 2016年 bear. All rights reserved.
//

#import "TwoController.h"

@interface TwoController ()

@end

@implementation TwoController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tabBarItem.badgeValue=@"6";

    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    button.frame=CGRectMake(0, 0, 200, 60);
    button.center=self.view.center;
    button.backgroundColor=[UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1];

    [button setTitle:@"改变 bageView" forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    [button addTarget:self action:@selector(changeBageView) forControlEvents:UIControlEventTouchUpInside];
}


-(void)changeBageView{
    if ([self.tabBarItem.badgeValue isEqualToString:@"0"]) {
        self.tabBarItem.badgeValue=@"6";
    }else{
        self.tabBarItem.badgeValue=@"0";
    }
}


@end
