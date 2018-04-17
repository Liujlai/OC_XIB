//
//  BViewController.m
//  S
//
//  Created by idea on 2018/4/17.
//  Copyright © 2018年 idea. All rights reserved.
//

#import "BViewController.h"
#import "BxibView.h"

@interface BViewController ()

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    [self loadViewFromXIB];
    [self loadViewFromAXIB];
    [self loadViewFromBXIB];
    // Do any additional setup after loading the view.
}

/**
 File’s Owner为nil的xib文件中的视图属于通用视图，在工程中可以复用
 */
-(void)loadViewFromXIB
{
//    File’s Owner为nil的xib文件中的视图属于通用视图，在工程中可以复用
    NSArray *views = [[NSBundle mainBundle]loadNibNamed:@"xibView" owner:nil options:nil];
    self.xibView = views[0];
    
    CGRect rect = _xibView.frame;
    rect.origin.x += 30.0f;
    rect.origin.y += 80.0f;
    _xibView.frame = rect;
    [self.view addSubview:_xibView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 File’s Owner不为nil的xib文件中的视图属于专用视图，在工程中不应该被复用
 */
-(void)loadViewFromAXIB
{
    
    //xib的File's Owner设为self，并建立了一个从该xib的View到self的IBOutlet
   [[NSBundle mainBundle]loadNibNamed:@"AxibView" owner:self options:nil];
//    只要self主动调用Load XIB的方法，self持有的IBOutlet指向的视图就会被初始化
    // 这里不需要通过views[0]的方式存取视图
    
    CGRect rect = _AxibView.frame;
    rect = CGRectMake(30, 160, UIScreen.mainScreen.bounds.size.width-60, 50);
    _AxibView.frame = rect;
    [self.view addSubview:_AxibView];
}
-(void)loadViewFromBXIB
{
    self.bxib = [BxibView ViewFromBXIB];
    CGRect rect = _bxib.frame;
    rect.origin.x = _AxibView.frame.origin.x;
    rect.origin.y = _AxibView.frame.origin.y + 80.0f;
    _bxib.frame = rect;
    [self.view addSubview:_bxib];
}

@end
