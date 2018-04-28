//
//  AdvertiseView.h
//  S
//
//  Created by idea on 2018/4/28.
//  Copyright © 2018年 idea. All rights reserved.
//

#import <UIKit/UIKit.h>

UIKIT_EXTERN NSString *const NotificationContants_Advertise_Key;
@interface AdvertiseView : UIView

/** 显示广告页面方法*/
- (void)show;

/** 图片路径*/
@property (nonatomic, copy) NSString *filePath;

@end
