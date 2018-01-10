//
//  YYApplicationModule.h
//  YYApplicationModule
//
//  Created by GWWL on 2018/1/9.
//

#import <UIKit/UIKit.h>
#import "YYConfigurationClass.h"
@import UserNotifications;

@protocol YYApplicationModuleDelegate <UIApplicationDelegate, UNUserNotificationCenterDelegate>
@optional
/**
 某个组件设置为主程序的window

 @param window [UIApplication sharedApplication].delegate.window
 */
- (void)yyApplicationModuleConfigurationWindow:(UIWindow *)window;

@end


@interface YYApplicationModule : UIResponder <UIApplicationDelegate, UNUserNotificationCenterDelegate>

@property (strong, nonatomic) UIWindow *window;

@end
