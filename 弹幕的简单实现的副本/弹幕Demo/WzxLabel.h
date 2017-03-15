//
//  WzxLabel.h
//  弹幕Demo
//
//  Created by wordoor－z on 15/11/23.
//  Copyright © 2015年 wzx. All rights reserved.
//

#import <UIKit/UIKit.h>
//弹幕label高度在此改 建议移到.m里面去
#define WlabelHeight 50
#define WDuration 5
@interface WzxLabel : UILabel
//title 内容 ； mywidth 界面宽度 ；thehigh 弹幕最高点 ； thelow 弹幕最低点;
-(id)initWithTitle:(NSString *)title andViewWidth:(CGFloat)myWidth andTheHigh:(CGFloat)theHigh andTheLow:(CGFloat)theLow;
@end
