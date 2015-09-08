//
//  ViewController.m
//  SwitchDemo
//
//  Created by Adusa on 15/9/1.
//  Copyright (c) 2015年 Adusa. All rights reserved.
//

#import "ViewController.h"
#import "ColorControl.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ColorControl *cc=[[ColorControl alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:cc];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
