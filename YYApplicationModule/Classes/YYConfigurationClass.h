//
//  YYConfigurationClass.h
//  YYApplicationModule
//
//  Created by GWWL on 2018/1/10.
//

#import <Foundation/Foundation.h>

@protocol YYConfigurationProtocol <NSObject>

@required
/**
 按照顺序启动组件

 @warm 请在实际项目中在该类(YYConfigurationClass)的分类中实现该协议，
       该分类不需要打包到组件中！！！
 @return 实现YYApplicationModuleDelegate协议的组件入口类的className
 */
+ (NSArray<NSString *> *)nameOfModuleNeedsToStarted;

@end

@interface YYConfigurationClass : NSObject

@end
