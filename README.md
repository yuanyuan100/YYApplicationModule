# YYApplicationModule

[![CI Status](http://img.shields.io/travis/yuanyuan100/YYApplicationModule.svg?style=flat)](https://travis-ci.org/yuanyuan100/YYApplicationModule)
[![Version](https://img.shields.io/cocoapods/v/YYApplicationModule.svg?style=flat)](http://cocoapods.org/pods/YYApplicationModule)
[![License](https://img.shields.io/cocoapods/l/YYApplicationModule.svg?style=flat)](http://cocoapods.org/pods/YYApplicationModule)
[![Platform](https://img.shields.io/cocoapods/p/YYApplicationModule.svg?style=flat)](http://cocoapods.org/pods/YYApplicationModule)

## Introduce

管理组件化的AppDelegate。方便、快速新建或集成组件工程，保持运行环境的一致性。在需要启动信息的组件中实现```YYApplicationModuleDelegate```协议，实现组件需要的协议函数，如果```YYApplicationModule```类中未实现协议方法，则需要自己添加（最好自己做成私库使用，按需添加）或issue我来添加。

在组件工程中只需额外维护1.```YYConfigurationClass```的分类（不需要打包到组件中，或者通过宏注释协议的实现），实现```YYConfigurationProtocol```;2.在```main```方法中替换为```NSStringFromClass([YYApplicationModule class])```为即可。

实现以上步骤，导入该库即可运行，无需修改过多代码，快速方便集成组件。

如果觉得该库还不错，欢迎交流。

## Example

见Demo

## Requirements

```ruby
s.ios.deployment_target = '8.0'
```

## Installation

YYApplicationModule is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'YYApplicationModule'
```

## Author

yuanyuan100, 469092943@qq.com

## License

YYApplicationModule is available under the MIT license. See the LICENSE file for more info.
