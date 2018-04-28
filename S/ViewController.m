//
//  ViewController.m
//  S
//
//  Created by idea on 2018/4/17.
//  Copyright © 2018年 idea. All rights reserved.
//

#import "ViewController.h"
#import "AViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
//    AViewController *vc = [[AViewController alloc]init];
//    vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
//    [self presentViewController:vc animated:YES completion:nil];
    
    UIStoryboard *mySb=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    AViewController *vc = [mySb instantiateViewControllerWithIdentifier:@"AVC"];
    vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:vc animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+ (BOOL)iPhoneX
{
    static BOOL b;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        b = CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size);
    });
    return b;
}
@end
