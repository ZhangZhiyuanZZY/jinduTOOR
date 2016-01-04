//
//  ZYProgressView.m
//  进度条
//
//  Created by 章芝源 on 16/1/3.
//  Copyright © 2016年 ZZY. All rights reserved.
//

#import "ZYProgressView.h"

@implementation ZYProgressView
//- (void)setZYProgressView:(UIView *)ZYProgressView
//{
//    
//}
//- (void)setProgressview:(UIProgressView *)progressview
//{
//    
//}
- (void)setValue:(float)value
{
    NSLog(@"%f", value);
    NSLog(@"%s", __FUNCTION__);
    _value = value;
    [self setNeedsDisplay];
}
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGFloat endAngle = _value * M_PI * 2 - M_PI_2;
    UIBezierPath *bzrPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(100, 100) radius:97 startAngle:-M_PI_2 endAngle:endAngle clockwise:YES];
    [bzrPath stroke];
}


@end
