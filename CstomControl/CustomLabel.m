//
//  CustomLabel.m
//  partTimeJob
//
//  Created by mac on 17/8/9.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "CustomLabel.h"

@implementation CustomLabel


- (CustomLabel *)initWithFrame:(CGRect)frame andSize:(float)size andTextColor:(UIColor *)textColor andText:(NSString *)text andTextAlign:(NSTextAlignment)textAlignment{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.font = [UIFont systemFontOfSize:size];
        self.textColor = textColor;
        self.text=text;
        self.textAlignment=textAlignment;
    }
    return self;

    
}

@end
