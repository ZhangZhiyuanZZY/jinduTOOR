//
//  ViewController.m
//  进度条
//
//  Created by 章芝源 on 16/1/3.
//  Copyright © 2016年 ZZY. All rights reserved.
//

#import "ViewController.h"
//define this constant if you want to use Masonry without the 'mas_' prefix
#define MAS_SHORTHAND

//define this constant if you want to enable auto-boxing for default syntax
#define MAS_SHORTHAND_GLOBALS

#import <Masonry.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    //设置UI控件
    [self setupUI];
    
}

- (void)setupUI
{
    ZYProgressView *ZYProgressview = [[ZYProgressView alloc]init];
    [self.view addSubview:ZYProgressview];
    self.ZYProgressView = ZYProgressview;
    [ZYProgressview makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.size.equalTo(CGSizeMake(200, 200));
    }];
    ZYProgressview.backgroundColor = [UIColor lightGrayColor];
    UILabel *label = [[UILabel alloc]init];
//    label.frame = ZYProgressview.bounds;
//    NSLog(@"%@", ZYProgressview);
    label.frame = CGRectMake(0, 0, 200, 200);
    [self.ZYProgressView addSubview:label];
    self.label = label;
    

    UISlider *progressView = [[UISlider alloc]init];
    [self.view addSubview:progressView];
    self.progressview = progressView;
    [progressView makeConstraints:^(MASConstraintMaker *make) {
        make.size.equalTo(CGSizeMake(200, 10));
        make.top.equalTo(ZYProgressview.bottom).offset(20);
        make.left.equalTo(ZYProgressview.left).offset(0);
    }];
    
    [self.progressview addTarget:self action:@selector(setupValue) forControlEvents:UIControlEventValueChanged];
}

- (void)setupValue
{
//    NSLog(@"%f", self.progressview.value);
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.text = [NSString stringWithFormat:@"%.2f%%", self.progressview.value * 100];
    self.ZYProgressView.value = self.progressview.value;
}


@end
