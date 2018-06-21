//
//  UIViewController+YHViewControllerCategroy.m
//  YHSeesaw
//
//  Created by 赵一欢 on 2017/2/16.
//  Copyright © 2017年 zhaoyihuan. All rights reserved.
//

#import "UIViewController+YHViewControllerCategroy.h"
#if TARGET_IPHONE_SIMULATOR
#import <objc/runtime.h>
#else
#import <objc/runtime.h>
#import <objc/message.h>
#endif
@interface UIViewController (YHAssociated)
@property (nonatomic, strong) YHModaAnimationManager * modaAnimationManager;
@end
@implementation UIViewController (YHAssociated)
- (void)setModaAnimationManager:(YHModaAnimationManager *)modaManager
{
    // 设置关联对象
    objc_setAssociatedObject(self, @selector(modaAnimationManager), modaManager, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (YHModaAnimationManager *)modaAnimationManager
{
    // 得到关联对象
    return objc_getAssociatedObject(self, @selector(modaAnimationManager));
}
@end
@implementation UIViewController (YHViewControllerCategroy)
- (void)showSystemAlertTitle:(NSString *)title message:(NSString *)message actionTitleArray:(NSArray *)actionArray colorTitle:(NSArray *)colorTitleArray withAction:(AlertActionBlock)alertAction preferredStyle:(UIAlertControllerStyle)preferredStyle
{
        UIAlertController * alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:preferredStyle];
        //添加按钮
        if (actionArray && actionArray.count) {
            for (NSInteger i = 0; i < actionArray.count; i ++) {
                UIAlertActionStyle alertActionStyle = UIAlertActionStyleDefault;
                if ([actionArray[i] isEqualToString:@"取消"]) {
                    alertActionStyle = UIAlertActionStyleCancel;
                }
                for (NSString * colorTitle in colorTitleArray) {
                    if ([colorTitle isEqualToString:actionArray[i]]) {
                        alertActionStyle = UIAlertActionStyleDestructive;
                    }
                }
                UIAlertAction * buttonAction = [UIAlertAction actionWithTitle:actionArray[i] style:alertActionStyle handler:^(UIAlertAction * _Nonnull action) {
                    alertAction(i);
                }];
                [alertController addAction:buttonAction];
            }
        }
        [self presentViewController:alertController animated:YES completion:nil];
}
- (void)customPresentVC:(UIViewController *)vc animation:(YHModaAnimationType)animation showBlackBackgroud:(BOOL)showBlackBackgroud canTapDismiss:(BOOL)canTapDismiss
{
    self.modaAnimationManager = [[YHModaAnimationManager alloc] initWithModaAnimationType:animation showBlackBackgroud:showBlackBackgroud canTapDismiss:canTapDismiss];
    vc.transitioningDelegate = self.modaAnimationManager;
    vc.modalPresentationStyle = UIModalPresentationCustom;
    [self presentViewController:vc animated:YES completion:nil];
}
//- (void)showWeakAlertString:(NSString *)string {
//    MBProgressHUD * hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
//    hud.mode = MBProgressHUDModeText;
//    [hud hideAnimated:YES afterDelay:1];
//    if (stringIsEmpty(string)) {
//        hud.label.text = @"error...";
//        return;
//    }
//    hud.label.text = string;
//}
//- (void)showHUDWithString:(NSString *)string {
//     MBProgressHUD * hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
//    if (stringIsEmpty(string)) {
//        hud.label.text = @"loading...";
//        return;
//    }
//    hud.label.text = string;
//}
//- (void)hiddenHUD {
//    [MBProgressHUD hideHUDForView:self.view animated:YES];
//}
- (void)logJsonWithDict:(id)response
{
    if (response == nil) {
        return;
    }
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:response options:NSJSONWritingPrettyPrinted error:nil];
    NSLog(@"%@",[[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding]);
}
- (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString {
    if (jsonString == nil) {
        return nil;
    }
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&err];
    
    if(err) {
        NSLog(@"json解析失败：%@",err);
        return nil;
    }
    return dic;
}
@end
