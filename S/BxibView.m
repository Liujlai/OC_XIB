//
//  BxibView.m
//  S
//
//  Created by idea on 2018/4/17.
//  Copyright © 2018年 idea. All rights reserved.
//

#import "BxibView.h"

@implementation BxibView

+(instancetype)ViewFromBXIB
{
    NSArray *views = [[NSBundle mainBundle]loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil];
    return views[0];
}

- (void)awakeFromNib
{
    self.lab.text = @"这是一个xib视图";
}
@end
