//
//  LView.m
//  S
//
//  Created by idea on 2018/4/17.
//  Copyright © 2018年 idea. All rights reserved.
//

#import "LView.h"

@implementation LView


/**
 设置边框宽度

 @param borderWidth 可视化视图传入的值
 */
- (void)setBorderWidth:(CGFloat)borderWidth {
    
    if (borderWidth < 0) return;
    
    self.layer.borderWidth = borderWidth;
}


/**
 设置边框颜色

 @param borderColor 可视化视图传入的值
 */
- (void)setBorderColor:(UIColor *)borderColor {
    
    self.layer.borderColor = borderColor.CGColor;
}


/**
 设置圆角

 @param cornerRadius 可视化视图传入的值
 */
- (void)setCornerRadius:(CGFloat)cornerRadius {
    
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = cornerRadius > 0;
}

@end
