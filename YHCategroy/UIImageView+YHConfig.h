//
//  UIImageView+YHConfig.h
//  YHSeesaw
//
//  Created by 赵一欢 on 2016/12/14.
//  Copyright © 2016年 zhaoyihuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (YHConfig)
/**
 *  设置拉伸图片
 *
 *  @param image  被拉伸图片
 *  @param insets 拉伸规则
 */
- (void)EdgeImage:(UIImage *)image withUIEdgeInsets:(UIEdgeInsets)insets;
@end
