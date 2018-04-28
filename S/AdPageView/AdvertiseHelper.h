//
//  AdvertiseHelper.h
//  S
//
//  Created by idea on 2018/4/28.
//  Copyright © 2018年 idea. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdvertiseView.h"
@interface AdvertiseHelper : NSObject
+ (instancetype)sharedInstance;

+ (void)showAdvertiserView:(NSArray<NSString *> *)imageArray;
@end
