//
//  CustomButton.m
//  CstomControl
//
//  Created by mac on 17/9/4.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "CustomButton.h"

@implementation CustomButton

- (CustomButton *)initWithFrame:(CGRect)frame andTitle:(NSString *)title andTextFont:(float)font andTextColor:(UIColor *)textColor andBackGroundColor:(UIColor *)backGroundColor andTextAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment{
    if([self initWithFrame:frame])
    {
        [self setTitle:title forState:UIControlStateNormal];
        self.titleLabel.text=title;
        self.titleLabel.font=[UIFont systemFontOfSize:font];
        self.backgroundColor=backGroundColor;
        [self setTitleColor:textColor forState:UIControlStateNormal];
        self.contentHorizontalAlignment=horizontalAlignment;

    }
    return self;
   
}

@end
