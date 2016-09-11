//
//  SNSChooseCityView.h
//  中国城市选择
//
//  Created by liu on 16/1/7.
//  Copyright © 2016年 思想加. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SNSChooseCityViewDelegate <NSObject>
//返回选择的省市
-(void)pickerDidSelectProvince:(NSString *)province city:(NSString *)city;

@end

@interface SNSChooseCityView : UIView<UIPickerViewDelegate,UIPickerViewDataSource>

@property(nonatomic,weak)__weak id <SNSChooseCityViewDelegate>delegate;


-(void)show;

@end
