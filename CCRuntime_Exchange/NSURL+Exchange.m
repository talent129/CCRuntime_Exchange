//
//  NSURL+Exchange.m
//  CCRuntime_Exchange
//
//  Created by luckyCoderCai on 2017/7/20.
//  Copyright © 2017年 luckyCoderCai. All rights reserved.
//

#import "NSURL+Exchange.h"

#import <objc/runtime.h>

@implementation NSURL (Exchange)

//load早于main函数
+ (void)load
{
    //1.拿到两个Method
    Method URLWithStr = class_getClassMethod([NSURL class], @selector(URLWithString:));
    
    Method CCCURLWithStr = class_getClassMethod([NSURL class], @selector(CCC_URLWithString:));
    
    //2.进行方法的交换
    method_exchangeImplementations(URLWithStr, CCCURLWithStr);
    
}

+ (instancetype)CCC_URLWithString:(NSString *)str
{
//    NSURL *url = [NSURL URLWithString:str];
    
    NSURL *url = [NSURL CCC_URLWithString:str];//走到了系统的实现
    
    if (!url) {
        NSLog(@"这个url有问题");
    }
    
    return url;
}

@end
