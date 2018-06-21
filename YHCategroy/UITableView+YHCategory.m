//
//  UITableView+YHCategory.m
//  Rossi
//
//  Created by 赵一欢 on 2018/6/14.
//  Copyright © 2018年 zhaoyihuan. All rights reserved.
//

#import "UITableView+YHCategory.h"

@implementation UITableView (YHCategory)
- (void)normalConfig {
    self.showsVerticalScrollIndicator = NO;
    self.showsHorizontalScrollIndicator = NO;
    self.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableFooterView = [[UIView alloc] init];
}
@end
