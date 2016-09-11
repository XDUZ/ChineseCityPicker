//
//  ViewController.m
//  cityPicker
//
//  Created by liu on 16/9/11.
//  Copyright © 2016年 思想加. All rights reserved.
//

#import "ViewController.h"
#import "SNSChooseCityView.h"

@interface ViewController ()<SNSChooseCityViewDelegate>

@end

@implementation ViewController
{
    UILabel *_cityLabel;
    SNSChooseCityView *_cityPickerView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _cityLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 50, 300, 38)];
    _cityLabel.text = @"所选的城市：";
    [self.view addSubview:_cityLabel];
    UIButton *chooseCityBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    chooseCityBtn.frame = CGRectMake(100,100, 100, 44);
    chooseCityBtn.backgroundColor = [UIColor lightGrayColor];
    [chooseCityBtn setTitle:@"选择城市" forState: UIControlStateNormal];
    [chooseCityBtn addTarget:self action:@selector(chooseCity) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:chooseCityBtn];
    
}
-(void)chooseCity{
    if (_cityPickerView == nil)
    {
        _cityPickerView = [[SNSChooseCityView alloc] initWithFrame:self.view.bounds];
        _cityPickerView.delegate = self;
        [self.view addSubview:_cityPickerView];
        [_cityPickerView show];
        
    }
    else
    {
        [_cityPickerView show];
    }
    
}

#pragma mark SNSChooseCityViewDelegate
-(void)pickerDidSelectProvince:(NSString *)province city:(NSString *)city{
    _cityLabel.text = [NSString stringWithFormat:@"所选的城市：%@ %@",province,city];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
