//
//  ViewController.m
//  CCRuntime_Exchange
//
//  Created by luckyCoderCai on 2017/7/20.
//  Copyright © 2017年 luckyCoderCai. All rights reserved.
//

#import "ViewController.h"
//#import "NSURL+Exchange.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //1. URL的category 公开一个自定义的方法 检查url
//    NSURL *url = [NSURL CCC_URLWithString:@"https://www.baidu.com/中文"];
    
    
    //2. runtime替换系统方法 此时不需要category头文件
    NSURL *url = [NSURL URLWithString:@"https://www.baidu.com/中文"];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    NSLog(@"%@", request);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
