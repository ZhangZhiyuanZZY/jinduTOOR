//
//  ViewController.h
//  进度条
//
//  Created by 章芝源 on 16/1/3.
//  Copyright © 2016年 ZZY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
///进度圆
@property(nonatomic, strong)ZYProgressView *ZYProgressView;
///进度条
@property(nonatomic, strong)UISlider *progressview;
///下载文字
@property(nonatomic, strong)UILabel *label;

@end

