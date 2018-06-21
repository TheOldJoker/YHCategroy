//
//  UIImageView+YHConfig.m
//  YHSeesaw
//
//  Created by 赵一欢 on 2016/12/14.
//  Copyright © 2016年 zhaoyihuan. All rights reserved.
//

#import "UIImageView+YHConfig.h"

@implementation UIImageView (YHConfig)
- (void)EdgeImage:(UIImage *)image withUIEdgeInsets:(UIEdgeInsets)insets
{
    image = [image resizableImageWithCapInsets:insets resizingMode:(UIImageResizingModeStretch)];
    [self setImage:image];
}
@end
