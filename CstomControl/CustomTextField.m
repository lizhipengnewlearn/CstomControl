//
//  CustomTextField.m
//  partTimeJob
//
//  Created by mac on 17/8/9.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField


- (CustomTextField *)initWithFrame:(CGRect)frame andTextSize:(CGFloat)size
                      andTextColor:(UIColor *)textColor
                andBackGroundColor:(UIColor *)backGroudColor
                     andPlaceolder:(NSString *)placeholder
{
    self=[super initWithFrame:frame];
    if(self)
    {
        self.font=[UIFont systemFontOfSize:size];
        self.textColor=textColor;
        self.backgroundColor=backGroudColor;
        self.placeholder=placeholder;
    }
    return self;
}

@end
