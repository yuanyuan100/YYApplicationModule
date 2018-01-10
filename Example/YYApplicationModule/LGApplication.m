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

- (void)yyApplicationModuleConfigurationWindow:(UIWindow *)window {
    window.rootViewController = [LGViewController new];
    [window makeKeyAndVisible];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"1");
    return YES;
}
@end
