//
//  YYConfigurationClass+ModuleA.m
//  YYApplicationModule_Example
//
//  Created by GWWL on 2018/1/10.
//  Copyright © 2018年 yuanyuan100. All rights reserved.
//

#import "YYConfigurationClass+ModuleA.h"

@implementation YYConfigurationClass (ModuleA)
+ (NSArray<NSString *> *)nameOfModuleNeedsToStarted {
    // App启动时，询问需要加载的组件
    return @[@"LGApplication", @"WDApplicatiion", @"HMApplication"];
}
@end
