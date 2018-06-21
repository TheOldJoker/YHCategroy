//
//  NSFileManager+category.h
//  RossiHD
//
//  Created by 赵一欢 on 2018/2/8.
//  Copyright © 2018年 zhaoyihuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSFileManager (category)
+ (BOOL)saveData:(NSData *)data filePath:(NSString *)filePath;
+ (UIImage *)getImageWithFilePath:(NSString *)filePath;
@end
