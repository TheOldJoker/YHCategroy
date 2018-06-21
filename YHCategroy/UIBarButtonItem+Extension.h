//
//  UIBarButtonItem+Extension.h
//  YHSeesaw
//
//  Created by 赵一欢 on 2017/3/22.
//  Copyright © 2017年 zhaoyihuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)
/**
 *  初始化导航栏取消按钮
 */
- (nullable UIBarButtonItem *)initCancelButtonWithTarget:(nullable id)target action:(nullable SEL)action;
/**
 *  初始化导航栏通用返回按钮
 */
- (nullable UIBarButtonItem *)initBackButtonWithTarget:(nullable id)target action:(nullable SEL)action;
/**
 *  初始化导航栏黑色返回按钮
 */
- (nullable UIBarButtonItem *)initWhiteBackButtonWithTarget:(nullable id)target action:(nullable SEL)action;

//- (nullable UIBarButtonItem *)initGoodsInfoBackButtonWithTarget:(nullable id)target action:(nullable SEL)action;
/**
 *  初始化导航栏消息按钮
 */
- (nullable UIBarButtonItem *)initMessageButtonWithTarget:(nullable id)target action:(nullable SEL)action;
@end
