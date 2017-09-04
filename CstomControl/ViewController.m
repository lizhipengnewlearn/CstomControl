//
//  ViewController.m
//  CstomControl
//
//  Created by mac on 17/9/4.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "ViewController.h"
#import "CustomLabel.h"
#import "CustomTextField.h"
#import "CustomButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    CustomLabel *label=[[CustomLabel alloc]initWithFrame:CGRectMake(100, 100, 200, 40) andSize:14 andTextColor:[UIColor lightGrayColor] andText:@"这是一个测试的label" andTextAlign:NSTextAlignmentCenter];
    [self.view addSubview:label];
    
    CustomTextField *textField=[[CustomTextField alloc]initWithFrame:CGRectMake(100, 150, 200, 50) andTextSize:16 andTextColor:[UIColor blackColor] andBackGroundColor:[UIColor lightGrayColor] andPlaceolder:@"这是一个测试的textField"];
    [self.view addSubview:textField];
    
    CustomButton *button=[[CustomButton alloc]initWithFrame:CGRectMake(100, 250, 200, 40) andTitle:@"button" andTextFont:17 andTextColor:[UIColor whiteColor] andBackGroundColor:[UIColor lightGrayColor] andTextAlignment:UIControlContentHorizontalAlignmentCenter];
    [self.view addSubview:button];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
