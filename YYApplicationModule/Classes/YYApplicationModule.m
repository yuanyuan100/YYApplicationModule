//
//  YYApplicationModule.m
//  YYApplicationModule
//
//  Created by GWWL on 2018/1/9.
//

#import "YYApplicationModule.h"

@interface YYConfigurationClass (YYApplicationModule) <YYConfigurationProtocol>

@end

@interface YYApplicationModule ()
@property (nonatomic, copy) NSMutableArray<id<YYApplicationModuleDelegate>> *moduleObjects;
@end

@implementation YYApplicationModule

- (void)loadModulesFromConfiguration {
    [self.moduleObjects removeAllObjects];
    NSArray<NSString *> *classNames = [YYConfigurationClass nameOfModuleNeedsToStarted];
    for (NSInteger i = 0; i < classNames.count; i++) {
        id<YYApplicationModuleDelegate> obj = [[NSClassFromString(classNames[i]) alloc] init];
        [self.moduleObjects addObject:obj];
    }
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self loadModulesFromConfiguration];
    id<YYApplicationModuleDelegate> obj_root_viewcontroller;
    for (NSInteger i = 0; i < self.moduleObjects.count; i++) {
        // 每个组件都需要实现，如果某个组件没有实现，直接crash
        id<YYApplicationModuleDelegate> obj = self.moduleObjects[i];
        [obj application:application didFinishLaunchingWithOptions:launchOptions];
        
        // 设置主window，将会覆盖其他组件的window
        if ([obj respondsToSelector:@selector(yyApplicationModuleConfigurationWindow:)]) {
            obj_root_viewcontroller = obj;
        }
    }
    [obj_root_viewcontroller yyApplicationModuleConfigurationWindow:self.window];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    for (NSInteger i = 0; i < self.moduleObjects.count; i++) {
        //并不是每个组件都需要实现时，可以仿照如下code
        id<YYApplicationModuleDelegate> obj = self.moduleObjects[i];
        if ([obj respondsToSelector:@selector(applicationWillResignActive:)]) {
            [obj applicationWillResignActive:application];
        }
    }
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    for (NSInteger i = 0; i < self.moduleObjects.count; i++) {
        id<YYApplicationModuleDelegate> obj = self.moduleObjects[i];
        if ([obj respondsToSelector:@selector(applicationDidEnterBackground:)]) {
            [obj applicationDidEnterBackground:application];
        }
    }
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    for (NSInteger i = 0; i < self.moduleObjects.count; i++) {
        id<YYApplicationModuleDelegate> obj = self.moduleObjects[i];
        if ([obj respondsToSelector:@selector(applicationWillEnterForeground:)]) {
            [obj applicationWillEnterForeground:application];
        }
    }
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    for (NSInteger i = 0; i < self.moduleObjects.count; i++) {
        id<YYApplicationModuleDelegate> obj = self.moduleObjects[i];
        if ([obj respondsToSelector:@selector(applicationDidBecomeActive:)]) {
            [obj applicationDidBecomeActive:application];
        }
    }
}

- (void)applicationWillTerminate:(UIApplication *)application {
    for (NSInteger i = 0; i < self.moduleObjects.count; i++) {
        id<YYApplicationModuleDelegate> obj = self.moduleObjects[i];
        if ([obj respondsToSelector:@selector(applicationWillTerminate:)]) {
            [obj applicationWillTerminate:application];
        }
    }
}

#pragma mark - getter
- (NSMutableArray<id<YYApplicationModuleDelegate>> *)moduleObjects {
    if (_moduleObjects == nil) {
        _moduleObjects = [[NSMutableArray alloc] init];
    }
    return _moduleObjects;
}

@end
