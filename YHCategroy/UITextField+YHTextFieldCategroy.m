//
//  UITextField+YHTextFieldCategroy.m
//  YHSeesaw
//
//  Created by 赵一欢 on 2017/1/20.
//  Copyright © 2017年 zhaoyihuan. All rights reserved.
//

#import "UITextField+YHTextFieldCategroy.h"
#import <objc/runtime.h>
NSString * const YHTextFieldDidDeleteBackwardNotification = @"textfield_did_notification";
@implementation UITextField (YHTextFieldCategroy)
+ (void)load
{
    Method method1 = class_getInstanceMethod([self class], NSSelectorFromString(@"deleteBackward"));
    Method method2 = class_getInstanceMethod([self class], @selector(yhNewdeleteBackward));
    method_exchangeImplementations(method1, method2);
}

- (void)yhNewdeleteBackward
{
    [self yhNewdeleteBackward];
    
    if ([self.delegate respondsToSelector:@selector(textFieldDidDeleteBackward:)])
    {
        id <YHTextFieldDeleteDelegate> delegate  = (id<YHTextFieldDeleteDelegate>)self.delegate;
        [delegate textFieldDidDeleteBackward:self];
    }
    
    [[NSNotificationCenter defaultCenter] postNotificationName:YHTextFieldDidDeleteBackwardNotification object:self];
}
@end
