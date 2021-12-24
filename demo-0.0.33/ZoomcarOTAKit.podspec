Pod::Spec.new do |s|
  s.name             = 'ZoomcarOTAKit'
  s.version          = '0.0.33'
  s.summary          = 'ZoomcarOTAKit is to verify the user driving license and fill the checklist'
 
  s.description      = 'Two major features is being added in this versiom. 1. Verify User Profile using Idfy. 2. Fille the start and end checklist' 
  s.homepage         = 'https://github.com/ZoomCar/iOS-SDK-Public'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Zoomcar' => 'mobileapps@zoomcar.com' }
  s.ios.vendored_frameworks = 'ZoomcarSDK/ZoomcarSDK.framework'
  s.resource_bundle = {
      'ZoomcarSDKBundle' => ['ZoomcarSDK/ZoomcarSDK.framework/ZoomcarSDKBundle.bundle/*.{nib,car,storyboardc,ttf,momd}']
  }
  # s.resources = [ "ZoomcarSDK.framework/ZoomcarSDKBundle.bundle/*.{nib,car}" ]
  s.source           = { :http => 'https://github.com/ZoomCar/iOS-SDK-Public/raw/main/demo-0.0.33/ZoomcarSDK.zip' }
  #s.ios.deployment_target = '10.0'
  s.platform = :ios, '12.0'
  s.swift_version = '5.0'
  s.dependency 'Alamofire', '~> 4.9.1'
  s.ios.dependency 'AFNetworking', '~> 4.0'
  s.dependency 'PKHUD', '~> 5.3.0'
  s.dependency 'MaterialComponents/ShadowLayer', '= 116.0'
  s.dependency 'MaterialComponents/ShadowElevations', '= 116.0'
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.frameworks = 'Foundation', 'UIKit', 'CoreData'  
end
