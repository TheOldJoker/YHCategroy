//
//  UIViewController+YHViewControllerCategroy.h
//  YHSeesaw
//
//  Created by 赵一欢 on 2017/2/16.
//  Copyright © 2017年 zhaoyihuan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YHModaAnimationManager.h"
typedef void (^AlertActionBlock)(NSInteger actionNumber);
@interface UIViewController (YHViewControllerCategroy)
//系统弹窗
- (void)showSystemAlertTitle:(NSString *)title message:(NSString *)message actionTitleArray:(NSArray *)actionArray colorTitle:(NSArray *)colorTitleArray withAction:(AlertActionBlock)alertAction preferredStyle:(UIAlertControllerStyle)preferredStyle;
//自定义视图
- (void)customPresentVC:(UIViewController *)vc animation:(YHModaAnimationType)animation showBlackBackgroud:(BOOL)showBlackBackgroud canTapDismiss:(BOOL)canTapDismiss;
//弱提示
- (void)showWeakAlertString:(NSString *)string;
//loadingHUD
- (void)showHUDWithString:(NSString *)string;
//hiddenHUD
- (void)hiddenHUD;
//打印Json
- (void)logJsonWithDict:(id)response;
//jsonString to dic
- (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString;
@end
