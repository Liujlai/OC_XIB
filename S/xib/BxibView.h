//
//  BxibView.h
//  S
//
//  Created by idea on 2018/4/17.
//  Copyright © 2018年 idea. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BxibView : UIView
@property (weak, nonatomic) IBOutlet UILabel *lab;
+(instancetype)ViewFromBXIB;
@end
