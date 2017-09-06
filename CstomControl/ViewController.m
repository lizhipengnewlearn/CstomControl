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
#import "CustomPickerView.h"
@interface ViewController ()
{

    CustomPickerView *pickerView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CustomLabel *label=[[CustomLabel alloc]initWithFrame:CGRectMake(100, 50, 200, 40) andSize:14 andTextColor:[UIColor lightGrayColor] andText:@"这是一个测试的label" andTextAlign:NSTextAlignmentCenter];
    [self.view addSubview:label];
    
    CustomTextField *textField=[[CustomTextField alloc]initWithFrame:CGRectMake(100, 100, 200, 50) andTextSize:16 andTextColor:[UIColor blackColor] andBackGroundColor:[UIColor lightGrayColor] andPlaceolder:@"这是一个测试的textField"];
    [self.view addSubview:textField];
    
    CustomButton *button=[[CustomButton alloc]initWithFrame:CGRectMake(100, 200, 200, 40) andTitle:@"button" andTextFont:17 andTextColor:[UIColor whiteColor] andBackGroundColor:[UIColor lightGrayColor] andTextAlignment:UIControlContentHorizontalAlignmentCenter];
    [button addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    
}

- (void)btnClick{
  pickerView=[[CustomPickerView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) andArray:@[@"1",@"2",@"3",@"4"]];
    pickerView.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:pickerView];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
