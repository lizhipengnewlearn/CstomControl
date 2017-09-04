//
//  CustomTextField.h
//  partTimeJob
//
//  Created by mac on 17/8/9.
//  Copyright © 2017年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTextField : UITextField

-(CustomTextField *)initWithFrame:(CGRect)frame andTextSize:(CGFloat)size andTextColor:(UIColor *)textColor andBackGroundColor:(UIColor *)backGroudColor andPlaceolder:(NSString *)placeholder;
@end
