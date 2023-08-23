source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '13.0'

target 'BasicProject' do
  use_frameworks!
  pod 'RxSwift'
  pod 'Moya/RxSwift'
  pod 'HandyJSON'
  pod 'ReachabilitySwift'
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
            config.build_settings['ENABLE_BITCODE'] = "NO"
            config.build_settings['EXPANDED_CODE_SIGN_IDENTITY'] = ""
            config.build_settings['CODE_SIGNING_REQUIRED'] = "NO"
            config.build_settings['CODE_SIGNING_ALLOWED'] = "NO"
            config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '11.0'
        end
    end
end
