//
//  CustomPickerView.h
//  test
//
//  Created by mac on 17/8/19.
//  Copyright © 2017年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^BlockType)(NSString *selectString);
@interface CustomPickerView : UIView<UIPickerViewDelegate,UIPickerViewDataSource>
@property (nonatomic, strong)UIPickerView *pickerView;
@property (nonatomic, strong)NSArray *dataArray;
@property (nonatomic, strong)UIButton *cancleButton;
@property (nonatomic, strong)UIButton *makeSureButton;
@property (nonatomic, strong)NSString *resultString;
@property (nonatomic, strong)UIView *whiteView;
@property (nonatomic, copy)BlockType myBlock;
- (CustomPickerView*)initWithFrame:(CGRect)frame andArray:(NSArray *)array;
- (void)showInview;
@end
