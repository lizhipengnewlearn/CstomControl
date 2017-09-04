//
//  CustomLabel.h
//  partTimeJob
//
//  Created by mac on 17/8/9.
//  Copyright © 2017年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomLabel : UILabel
- (CustomLabel *)initWithFrame:(CGRect)frame andSize:(float)size andTextColor:(UIColor *)textColor andText:(NSString*)text andTextAlign:(NSTextAlignment)textAlignment;
@end
