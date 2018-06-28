//
//  NSArray+YHBaseCategory.m
//  YHCategroyDemo
//
//  Created by 赵一欢 on 2018/6/28.
//  Copyright © 2018年 zhaoyihuan. All rights reserved.
//

#import "NSArray+YHBaseCategory.h"

@implementation NSArray (YHBaseCategory)
- (NSArray *)uppercaseString{
    NSArray * temp = nil;
    @try {
        temp = [self valueForKeyPath:@"uppercaseString"];
    }
    @catch (NSException *exception) {
        NSLog(@"%s\n%@", __FUNCTION__, exception);
    }
    @finally {
        return temp;
    }
}

- (NSArray *)lowercaseString{
    NSArray * temp = nil;
    @try {
        temp = [self valueForKeyPath:@"lowercaseString"];
    }
    @catch (NSException *exception) {
        NSLog(@"%s\n%@", __FUNCTION__, exception);
    }
    @finally {
        return temp;
    }
}
- (NSArray *)capitalizedString{
    NSArray * temp = nil;
    @try {
        temp = [self valueForKeyPath:@"capitalizedString"];
    }
    @catch (NSException *exception) {
        NSLog(@"%s\n%@", __FUNCTION__, exception);
    }
    @finally {
        return temp;
    }
}
- (NSNumber *)min{
    NSNumber * min = nil;
    @try {
        min = [self valueForKeyPath:@"@min.floatValue"];
    }
    @catch (NSException *exception) {
        NSLog(@"%s\n%@", __FUNCTION__, exception);
    }
    @finally {
        return min;
    }
}
- (NSNumber *)max{
    NSNumber * max = nil;
    @try {
        max = [self valueForKeyPath:@"@max.floatValue"];
    }
    @catch (NSException *exception) {
        NSLog(@"%s\n%@", __FUNCTION__, exception);
    }
    @finally {
        return max;
    }
}
- (NSNumber *)sum{
    NSNumber * sum = nil;
    @try {
        sum = [self valueForKeyPath:@"@sum.floatValue"];
    }
    @catch (NSException *exception) {
        NSLog(@"%s\n%@", __FUNCTION__, exception);
    }
    @finally {
        return sum;
    }
}
- (NSNumber *)avg{
    NSNumber * avg = nil;
    @try {
        avg = [self valueForKeyPath:@"@avg.floatValue"];
    }
    @catch (NSException *exception) {
        NSLog(@"%s\n%@", __FUNCTION__, exception);
    }
    @finally {
        return avg;
    }
}
- (NSArray *)distinctUnionOfObjects{
    NSArray * temp = nil;
    @try {
        temp = [self valueForKeyPath:@"@distinctUnionOfObjects.self"];
    }
    @catch (NSException *exception) {
        NSLog(@"%s\n%@", __FUNCTION__, exception);
    }
    @finally {
        return temp;
    }
}
@end
