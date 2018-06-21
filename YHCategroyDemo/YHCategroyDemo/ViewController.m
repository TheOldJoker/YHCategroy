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
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
