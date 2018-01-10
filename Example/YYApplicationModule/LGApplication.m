//
//  LGApplication.m
//  YYApplicationModule_Example
//
//  Created by GWWL on 2018/1/10.
//  Copyright © 2018年 yuanyuan100. All rights reserved.
//

#import "LGApplication.h"
#import "LGViewController.h"

@implementation LGApplication

// 定制为主window，其它组件的window将失效
- (void)yyApplicationModuleConfigurationWindow:(UIWindow *)window {
    window.rootViewController = [LGViewController new];
    [window makeKeyAndVisible];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"1");
    // 此处初始化组件LG,通知组件LG允许被加载
    return YES;
}
@end
