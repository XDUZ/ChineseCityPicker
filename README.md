# ChineseCityPicker
中国省市地区选择器
=========

简介
----------

可以选择中国省份 和对应的城市。

使用
---------
```
SNSChooseCityView *cityPickerView = [[SNSChooseCityView alloc] initWithFrame:self.view.bounds];
cityPickerView.delegate = self;
[self.view addSubview:cityPickerView];
[cityPickerView show];
```
