$binary_source = 'http://gitlab.zhuanspirit.com/zz-ios-open/ZZBinarySpecs.git'
$open_source = 'http://gitlab.zhuanspirit.com/zz-ios-open/ZZOpenSpecs.git'
$default_source = 'http://gitlab.zhuanspirit.com/zz-ios/ZZSpecs.git'
source $binary_source
source $open_source
source $default_source

platform :ios, '11.0'
inhibit_all_warnings!

# 禁止生成相同UUID
install! 'cocoapods', :deterministic_uuids => false,
                      :generate_multiple_pod_projects => true,
                      :disable_input_output_paths => false,
                      :incremental_installation => false,
                      :warn_for_unused_master_specs_repo => true,
                      :preserve_pod_file_structure => true

plugin 'cocoapods-imy-bin'
set_configuration_env('release_iphoneos')
binary_pods = []

target 'PodBinaryBuilderTest' do
  # Comment the next line if you don't want to use dynamic frameworks
  #
  pod 'lottie-ios', '2.1.8-stable.2+zhuanzhuan'
#  pod 'AFNetworking', '4.0.1-fix+zhuanzhuan.4', :modular_headers => true
  pod 'AFNetworking', :path => 'Binary/AFNetworking'

  pod 'libwebp', '1.1.0'

#  pod 'ZZKit-Swift', :git => 'http://gitlab.zhuanspirit.com/zz-ios-open/ios_module_zzkit_swift.git', :tag => '0.4.6'
  pod 'ZZKit-Swift', :path => 'Binary/ZZKit-Swift'

  pod 'SwiftyJSON', :git => 'http://gitlab.zhuanspirit.com/zz-ios-open/ios_module_swifty_json.git', :tag => '5.0.1'
#  pod 'SwiftyJSON', :path => 'Binary/SwiftyJSON'

  pod 'MixTest', :path => './MixTest'

  # Pods for PodBinaryBuilderTest

end


post_install do |installer|
  installer.pod_target_subprojects&.each do | project |
    project.targets.each do |target|
      if target.respond_to?(:product_type) and target.product_type == "com.apple.product-type.bundle"
        target.build_configurations.each do |config|
          config.build_settings['CODE_SIGN_IDENTITY'] = ''
        end
      end
    end
  end
end
