//
//  YYConfigurationClass+ModuleA.m
//  YYApplicationModule_Example
//
//  Created by GWWL on 2018/1/10.
//  Copyright © 2018年 yuanyuan100. All rights reserved.
//

#import "YYConfigurationClass+ModuleA.h"

@implementation YYConfigurationClass (ModuleA)

// 在buildsetting中设置宏LGApplication__YYConfigurationClass=1
// 这样在组件打包后宏LGApplication__YYConfigurationClass自动失效
#if LGApplication__YYConfigurationClass

+ (NSArray<NSString *> *)nameOfModuleNeedsToStarted {
    // App启动时，询问需要加载的组件
    return @[@"LGApplication", @"WDApplicatiion", @"HMApplication"];
}

#endif
@end
