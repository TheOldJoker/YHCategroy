//
//  UIView+category.h
//  KakaCastle
//
//  Created by 赵一欢 on 2017/10/12.
//  Copyright © 2017年 zhaoyihuan. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface UIView (category)
- (UIViewController *)viewController;
- (void)setCornerRadius:(float)cornerRadius borderWidth:(float)borderWidth borderColor:(UIColor *)borderColor;
@end
