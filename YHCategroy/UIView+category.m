//
//  UIView+category.m
//  KakaCastle
//
//  Created by 赵一欢 on 2017/10/12.
//  Copyright © 2017年 zhaoyihuan. All rights reserved.
//

#import "UIView+category.h"

@implementation UIView (category)
//获取当前view所在控制器
- (UIViewController *)viewController
{
    UIViewController *viewController = nil;
    UIResponder *next = self.nextResponder;
    while (next)
    {
        if ([next isKindOfClass:[UIViewController class]])
        {
            viewController = (UIViewController *)next;
            break;
        }
        next = next.nextResponder;
    }
    return viewController;
}
- (void)setCornerRadius:(float)cornerRadius borderWidth:(float)borderWidth borderColor:(UIColor *)borderColor{
    self.layer.cornerRadius = cornerRadius;
    if (borderColor) {
        self.layer.borderWidth = borderWidth;
        self.layer.borderColor = borderColor.CGColor;
    }
    self.clipsToBounds = YES;
}
@end
