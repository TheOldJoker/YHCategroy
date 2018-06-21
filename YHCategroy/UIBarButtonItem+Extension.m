//
//  UIBarButtonItem+Extension.m
//  YHSeesaw
//
//  Created by 赵一欢 on 2017/3/22.
//  Copyright © 2017年 zhaoyihuan. All rights reserved.
//
#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)
- (nullable UIBarButtonItem *)initCancelButtonWithTarget:(nullable id)target action:(nullable SEL)action
{
    UIButton * cancelButton = [[UIButton alloc] initWithFrame:(CGRectMake(0, 0, 30, 30))];
    [cancelButton setImage:[UIImage imageNamed:@"nav_shut"] forState:(UIControlStateNormal)];
    [cancelButton sizeToFit];
    [cancelButton addTarget:target action:action forControlEvents:(UIControlEventTouchUpInside)];
    return [self initWithCustomView:cancelButton];
}
- (nullable UIBarButtonItem *)initGoodsInfoBackButtonWithTarget:(nullable id)target action:(nullable SEL)action
{
    UIButton * backButton = [[UIButton alloc] initWithFrame:(CGRectMake(0, 0, 35, 35))];
    backButton.backgroundColor = [UIColor clearColor];
    backButton.layer.cornerRadius = 35 / 2;
    [backButton setImage:[UIImage imageNamed:@"nav_return_white"] forState:(UIControlStateNormal)];
//    [backButton sizeToFit];
    [backButton addTarget:target action:action forControlEvents:(UIControlEventTouchUpInside)];
    return [self initWithCustomView:backButton];
}
- (nullable UIBarButtonItem *)initBackButtonWithTarget:(nullable id)target action:(nullable SEL)action
{
    UIButton * backButton = [[UIButton alloc] init];
    [backButton setBackgroundImage:[UIImage imageNamed:@"nav_back"] forState:(UIControlStateNormal)];
    [backButton sizeToFit];
    [backButton addTarget:target action:action forControlEvents:(UIControlEventTouchUpInside)];
    return [self initWithCustomView:backButton];
}
- (nullable UIBarButtonItem *)initWhiteBackButtonWithTarget:(nullable id)target action:(nullable SEL)action
{
    UIButton * backButton = [[UIButton alloc] init];
    [backButton setBackgroundImage:[UIImage imageNamed:@"nav_return_white"] forState:(UIControlStateNormal)];
    [backButton sizeToFit];
    [backButton addTarget:target action:action forControlEvents:(UIControlEventTouchUpInside)];
    return [self initWithCustomView:backButton];
}
- (nullable UIBarButtonItem *)initMessageButtonWithTarget:(nullable id)target action:(nullable SEL)action
{
    UIButton * message = [[UIButton alloc] init];
    [message setImage:[UIImage imageNamed:@"nav_news"] forState:(UIControlStateNormal)];
     [message setImage:[UIImage imageNamed:@"nav_news"] forState:(UIControlStateHighlighted)];
    [message sizeToFit];
    [message addTarget:target action:action forControlEvents:(UIControlEventTouchUpInside)];
    return [self initWithCustomView:message];
}
@end
