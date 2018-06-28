//
//  ViewController.m
//  YHCategroyDemo
//
//  Created by 赵一欢 on 2018/6/21.
//  Copyright © 2018年 zhaoyihuan. All rights reserved.
//

#import "ViewController.h"
#import "YHBaseCategroy.h"
@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
}
- (IBAction)buttonAction:(UIButton *)sender {
    [self showTextFieldAlertWithTextContent:sender.titleLabel.text title:@"title" message:@"message" actionTitleArray:@[@"cancel",@"ok"] valueBlock:^(NSString *resValue) {
        [sender setTitle:resValue forState:(UIControlStateNormal)];
    }];
}
- (void)viewDidLoad {
    [super viewDidLoad];
//    NSArray * tempStringNumber = @[@"qweqe",@12,@"24",@"22",@"21",@"25",@"33.5",@123.3,@"33.5"];
//    NSNumber * min = [tempStringNumber min];
//    NSNumber * max = [tempStringNumber max];
//    NSNumber * sum = [tempStringNumber sum];
//    NSNumber * avg = [tempStringNumber avg];
//    NSLog(@"min:%@",min);
//    NSLog(@"max:%@",max);
//    NSLog(@"sum:%@",sum);
//    NSLog(@"avg:%@",avg);
//    NSLog(@"%@",[tempStringNumber distinctUnionOfObjects]);
//
    
    NSArray * tempString = @[@"Kqeqe",@"QWEQWE",@"AD",@"qwwe"];
    NSLog(@"%@",[tempString lowercaseString]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
