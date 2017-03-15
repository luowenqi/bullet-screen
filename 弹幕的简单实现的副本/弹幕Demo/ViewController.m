//
//  ViewController.m
//  弹幕Demo
//
//  Created by wordoor－z on 15/11/23.
//  Copyright © 2015年 wzx. All rights reserved.
//

#import "ViewController.h"
#import "WzxLabel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)btnClick:(id)sender
{
    WzxLabel * wzx = [[WzxLabel alloc]initWithTitle:_wzxTextfield.text andViewWidth:self.view.frame.size.width andTheHigh:100 andTheLow:300];
    [self.view addSubview:wzx];
    
    _wzxTextfield.text = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
