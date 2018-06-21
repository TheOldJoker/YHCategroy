//
//  NSString+YHConfig.h
//  YHSeesaw
//
//  Created by 赵一欢 on 2016/12/15.
//  Copyright © 2016年 zhaoyihuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (YHConfig)
- (NSString *)sha1;
/**
 *  判断是否数字
 *
 *  @return 是否为数字
 */
- (BOOL)isNumber;

/**
 判断电话号码
 
 @return 是否为电话号码
 */
- (BOOL)isPhoneNumber;

/**
 判断昵称

 @return 是否为昵称
 */
- (BOOL)isUserName;
//去掉url参数
- (NSString *)discardUrlParameters;
//获取url参数
- (NSMutableDictionary *)getURLParameters;
//jsonString转字典
- (NSDictionary *)dictionaryConversion;
@end
