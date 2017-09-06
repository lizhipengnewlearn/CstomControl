

//
//  CustomPickerView.m
//  test
//
//  Created by mac on 17/8/19.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "CustomPickerView.h"
#define SCREENWIDTH [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height
@implementation CustomPickerView
- (CustomPickerView *)initWithFrame:(CGRect)frame andArray:(NSArray *)array{

    self=[super initWithFrame: frame];
    if(self)
    {
        
        UIView *backView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        backView.backgroundColor=[UIColor blackColor];
        backView.userInteractionEnabled=YES;
        backView.alpha=0.3f;
        [self addSubview:backView];
        self.dataArray=array;
        _resultString=_dataArray[0];
        self.whiteView=[[UIView alloc]initWithFrame:CGRectMake(0, SCREENHEIGHT-244, SCREENWIDTH, 244)];
        self.whiteView.backgroundColor=[UIColor whiteColor];
        [self addSubview:self.whiteView];
        
        UIView *topView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREENWIDTH, 44)];
        UIView *lineView=[[UIView alloc]initWithFrame:CGRectMake(0, 43.5, SCREENWIDTH, 0.5)];
        lineView.backgroundColor=[UIColor lightGrayColor];
        [topView addSubview:lineView];
        self.cancleButton =[[UIButton alloc]initWithFrame:CGRectMake(0, 0, 50, 44)];
        [self.cancleButton setTitle:@"取消" forState:UIControlStateNormal];
        self.cancleButton.titleLabel.font=[UIFont systemFontOfSize:13];
        [self.cancleButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.cancleButton addTarget:self action:@selector(cancleButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [topView addSubview:self.cancleButton];
        self.makeSureButton=[[UIButton alloc]initWithFrame:CGRectMake(SCREENWIDTH-50, 0, 50, 44)];
        [self.makeSureButton setTitle:@"确定" forState:UIControlStateNormal];
        self.makeSureButton.titleLabel.font=[UIFont systemFontOfSize:13];

        [self.makeSureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.makeSureButton addTarget:self action:@selector(makeSureButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [topView addSubview:self.makeSureButton];
        [_whiteView addSubview:topView];
        self.pickerView =[[UIPickerView alloc]initWithFrame:CGRectMake(0, topView.frame.size.height+topView.frame.origin.y, SCREENWIDTH, 200)];
        self.pickerView.showsSelectionIndicator=YES;
        self.pickerView.delegate=self;
        self.pickerView.dataSource=self;
        [_whiteView addSubview:self.pickerView];
    }
    return self;
}

-(void)showInview{

    self.frame=CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGHT);
    UIWindow *currentWindow=[UIApplication sharedApplication].keyWindow;
    [currentWindow addSubview:self];
    _whiteView.frame = CGRectMake(0, SCREENHEIGHT, [[UIScreen mainScreen] bounds].size.width, 244);
    [UIView animateWithDuration:0.4 animations:^{
        _whiteView.frame = CGRectMake(0, SCREENHEIGHT - _whiteView.frame.size.height, [[UIScreen mainScreen] bounds].size.width, _whiteView.frame.size.height);
    }];
    
}
- (void)cancleButtonClick{
    
    [UIView animateWithDuration:0.4
                     animations:^{
                         _whiteView.frame = CGRectMake(0, _whiteView.frame.origin.y+_whiteView.frame.size.height, _whiteView.frame.size.width, _whiteView.frame.size.height);
                     }
                     completion:^(BOOL finished){
                         [self removeFromSuperview];
                         
                     }];

}

-(void)makeSureButtonClick{
    if(_myBlock)
    {
        _myBlock(_resultString);
    }
    [self cancleButtonClick];

}
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component{

    return SCREENWIDTH;
}


- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{

    return 43;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{

    return self.dataArray.count;
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{

       _resultString=_dataArray[row];
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return _dataArray[row];

}


- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    //设置分割线的颜色
    for(UIView *singleLine in pickerView.subviews)
    {
        if (singleLine.frame.size.height < 1)
        {
            singleLine.backgroundColor = [UIColor lightGrayColor];
        }
    }
    //设置文字的属性
    UILabel *genderLabel = [UILabel new];
    genderLabel.textAlignment = NSTextAlignmentCenter;
    genderLabel.text = self.dataArray[row];//self.genderArray里边内容为@[@"男",@"女"]
    genderLabel.textColor = [UIColor blackColor];
    
    return genderLabel;
}

@end
