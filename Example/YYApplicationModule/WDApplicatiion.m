//
//  WDApplicatiion.m
//  YYApplicationModule_Example
//
//  Created by GWWL on 2018/1/10.
//  Copyright © 2018年 yuanyuan100. All rights reserved.
//

#import "WDApplicatiion.h"
#import "WDViewController.h"

@implementation WDApplicatiion

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"2");
    
    // 组件单独运行时设置window
    // 此处初始化组件WD,通知组件WD允许被加载
    [UIApplication sharedApplication].delegate.window.rootViewController = [WDViewController new];
    return YES;
}
@end
