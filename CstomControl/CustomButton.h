//
//  CustomButton.h
//  CstomControl
//
//  Created by mac on 17/9/4.
//  Copyright © 2017年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomButton : UIButton
- (CustomButton*)initWithFrame:(CGRect)frame andTitle:(NSString*)title andTextFont:(float)font andTextColor:(UIColor*)textColor andBackGroundColor:(UIColor*)backGroundColor andTextAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment;
@end
