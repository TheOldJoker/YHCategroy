//
//  UILabel+YHConfig.m
//  KakaCastle
//
//  Created by 赵一欢 on 2018/4/10.
//  Copyright © 2018年 zhaoyihuan. All rights reserved.
//

#import "UILabel+YHConfig.h"
#import "UIView+YHFrame.h"
@implementation UILabel (YHConfig)
- (void)configWithTextColor:(UIColor *)textColor font:(UIFont *)font textAlignment:(NSTextAlignment)textAlignment backgroundColor:(UIColor *)backgroundColor{
    if (textColor) {
        self.textColor = textColor;
    }
    if (font) {
        self.font = font;
    }
    if (backgroundColor) {
        self.backgroundColor = backgroundColor;
    }
    self.textAlignment = textAlignment;
}
- (void)reSetWidth{
    NSDictionary * attribute = @{NSFontAttributeName:self.font};
    CGSize retSize = [self.text boundingRectWithSize:CGSizeMake(MAXFLOAT, self.height) options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attribute context:nil].size;
    self.width = retSize.width;
}
- (void)reSetHeight{
    NSDictionary * attribute = @{NSFontAttributeName:self.font};
    CGSize retSize = [self.text boundingRectWithSize:CGSizeMake(self.width, MAXFLOAT) options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attribute context:nil].size;
    self.height =  retSize.height;
}
@end
