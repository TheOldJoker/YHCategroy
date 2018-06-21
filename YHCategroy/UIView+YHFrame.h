//
//  UIView+YHFrame.h
//  YHSeesaw
//
//  Created by 赵一欢 on 2016/12/23.
//  Copyright © 2016年 zhaoyihuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (YHFrame)
@property (nonatomic, assign) CGFloat left;
@property (nonatomic, assign) CGFloat right;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGFloat top;
@property (nonatomic, assign) CGFloat bottom;
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGPoint origin;
- (NSString *)frameDescription;
@end
