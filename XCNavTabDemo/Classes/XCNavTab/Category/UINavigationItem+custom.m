//
//  UINavigationItem+custom.m
//  XCNavTab
//  url:https://github.com/xiaocaiabc/XCNavTab
//  Created by 40  on 15/11/23.
//  Copyright © 2015年 bear. All rights reserved.
//

#import "UINavigationItem+custom.h"

@implementation UINavigationItem (custom)
-(void)setMyTitle:(NSString*)title{
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 44)];
    
    titleLabel.textColor = [UIColor whiteColor];
    
    titleLabel.textAlignment = NSTextAlignmentCenter;
    
    titleLabel.text = title;
    
    self.titleView=titleLabel;

}

@end
