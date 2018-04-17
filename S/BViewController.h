//
//  BViewController.h
//  S
//
//  Created by idea on 2018/4/17.
//  Copyright © 2018年 idea. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BxibView;

@interface BViewController : UIViewController
@property(nonatomic ,strong)UIView *xibView;

@property (strong, nonatomic) IBOutlet UIView *AxibView;

@property(strong,nonatomic) BxibView *bxib;
@end
