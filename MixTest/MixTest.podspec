Pod::Spec.new do |s|
  s.name             = 'MixTest'
  s.version          = '0.1.0'
  s.summary          = 'TODO: 填写组件 ios_module_qpm 的简单描述。'
  s.description      = <<-DESC
TODO: 填写组件 ios_module_qpm 的详细功能描述、使用方法、注意事项等必要信息。
                       DESC

  s.homepage         = 'https://gitlab.zhuanspirit.com:zz-ios/MixTest'
  s.license          = { :type => 'MIT' }
  s.author           = { 'zhaoweibing' => 'zhaoweibing@zhuanzhuan.com' }
  s.source           = { :git => 'git@gitlab.zhuanspirit.com:zz-ios/MixTest.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = "10.9"
  s.resources  = 'Assets/ZZKit.bundle'
  s.source_files = "Classes/**/*"
  s.swift_version = '5.0'
end
