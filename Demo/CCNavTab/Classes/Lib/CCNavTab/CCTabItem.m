//
//  UIBarButtonItem+XCC.m
//  XCNavTab
//  url:https://github.com/xiongcaichang/CCNavTab
//  Created by bear on 16/3/31.
//  Copyright © 2016年 bear. All rights reserved.
//

#import "CCTabItem.h"

#define kDockItemSelectedBG @"tabbar_slider.png"

// 文字的高度比例
#define kTitleRatio 0.3


@implementation CCTabItem
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // 1.文字居中
        self.titleLabel.textAlignment = NSTextAlignmentCenter;

        // 2.文字大小
        CGFloat fontSize=([UIScreen mainScreen].bounds.size.width/414.0)*12;
        self.titleLabel.font = [UIFont systemFontOfSize:fontSize];
        [self setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];

        // 3.图片的内容模式
        self.imageView.contentMode = UIViewContentModeScaleToFill;

    }
    return self;
}

#pragma mark 覆盖父类在highlighted时的所有操作
- (void)setHighlighted:(BOOL)highlighted {
        [super setHighlighted:highlighted];
}

#pragma mark 调整内部ImageView的frame
- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    
    CGFloat imageX = (contentRect.size.width-27)*0.5;
    CGFloat imageY = 3;
    CGFloat imageWidth = 27;
    CGFloat imageHeight = 27;
    return CGRectMake(imageX, imageY, imageWidth, imageHeight);
}

#pragma mark 调整内部UILabel的frame
- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGFloat titleX = 0;
    
    CGFloat titleHeight = contentRect.size.height * kTitleRatio;
    CGFloat titleY = contentRect.size.height - titleHeight - 3;
    CGFloat titleWidth = contentRect.size.width;
    return CGRectMake(titleX, titleY, titleWidth, titleHeight);
}

@end
