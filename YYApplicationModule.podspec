#
# Be sure to run `pod lib lint YYApplicationModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YYApplicationModule'
  s.version          = '0.0.1'
  s.summary          = '管理组件化的Application'

  s.description      = <<-DESC
  管理组件化的Application。方便组件化新建组件工程的运行，保持运行环境的一致性。在每个工程中只需额外维护'YYConfigurationClass'的分类，实现'YYConfigurationProtocol'即可快速、独立搭建组件工程。
                       DESC

  s.homepage         = 'https://github.com/yuanyuan100/YYApplicationModule'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yuanyuan100' => '469092943@qq.com' }
  s.source           = { :git => 'https://github.com/yuanyuan100/YYApplicationModule.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'

  s.source_files = 'YYApplicationModule/Classes/**/*.{h,m}'
  s.frameworks = 'UIKit', 'Foundation'
end
