//
//  UITextField+YHTextFieldCategroy.h
//  YHSeesaw
//
//  Created by 赵一欢 on 2017/1/20.
//  Copyright © 2017年 zhaoyihuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol YHTextFieldDeleteDelegate <NSObject>

- (void)textFieldDidDeleteBackward:(UITextField *)textField;

@end
@interface UITextField (YHTextFieldCategroy)
@property (nonatomic , weak) id<YHTextFieldDeleteDelegate> delegate;
@end
