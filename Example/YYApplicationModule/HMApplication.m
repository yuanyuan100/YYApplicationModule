//
//  HMApplication.m
//  YYApplicationModule_Example
//
//  Created by GWWL on 2018/1/10.
//  Copyright © 2018年 yuanyuan100. All rights reserved.
//

#import "HMApplication.h"

@implementation HMApplication
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"3");
    // 此处初始化公共模块，保持环境的一致性，保证单独组件测试的无差别性。即无需集成后测试。
    return YES;
}
@end
