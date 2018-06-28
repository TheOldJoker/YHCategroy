//
//  NSArray+YHBaseCategory.h
//  YHCategroyDemo
//
//  Created by 赵一欢 on 2018/6/28.
//  Copyright © 2018年 zhaoyihuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (YHBaseCategory)
- (NSArray *)uppercaseString;
- (NSNumber *)min;
- (NSNumber *)max;
- (NSNumber *)sum;
- (NSNumber *)avg;
/*
 * 去除重复元素
 */
- (NSArray *)distinctUnionOfObjects;
@end
