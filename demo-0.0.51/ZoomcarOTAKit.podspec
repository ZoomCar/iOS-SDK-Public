Pod::Spec.new do |s|
  s.name             = 'ZoomcarOTAKit'
  s.version          = '0.0.51'
  s.summary          = 'ZoomcarOTAKit is to verify the user driving license and fill the checklist'
 
  s.description      = 'Two major features is being added in this versiom. 1. Verify User Profile using Idfy. 2. Fille the start and end checklist' 
  s.homepage         = 'https://github.com/ZoomCar/iOS-SDK-Public'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Zoomcar' => 'mobileapps@zoomcar.com' }
  s.ios.vendored_frameworks = 'ZoomcarSDK.framework'
  s.resource_bundle = {
      'ZoomcarSDKBundle' => ['ZoomcarSDK.framework/ZoomcarSDKBundle.bundle/*.{nib,car,storyboardc,ttf,momd}']
  }
  # s.resources = [ "ZoomcarSDK.framework/ZoomcarSDKBundle.bundle/*.{nib,car}" ]
  s.source           = { :http => 'https://github.com/ZoomCar/iOS-SDK-Public/raw/main/demo-0.0.51/ZoomcarSDK.zip' }
  s.ios.deployment_target = '12.0'

  # s.platforms        = { :ios => '12.0' }
  s.requires_arc     = true

  s.pod_target_xcconfig = { 
  	'VALID_ARCHS' => 'armv7 arm64 x86_64',
    'ONLY_ACTIVE_ARCH' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }

  s.user_target_xcconfig = { 
  	'VALID_ARCHS' => 'armv7 arm64 x86_64',
    'ONLY_ACTIVE_ARCH' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' 
  }

  s.xcconfig = { 
  	'VALID_ARCHS' => 'armv7 arm64 x86_64',
  	'ONLY_ACTIVE_ARCH' => 'YES',
  	'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' 
  }

  s.swift_versions = ['5.3']

  s.ios.dependency 'Alamofire', '~> 5.6.2'
  s.ios.dependency 'AFNetworking', '~> 4.0'
  s.ios.dependency 'MaterialComponents/ShadowLayer', '124.2.0'
  s.ios.dependency 'MaterialComponents/ShadowElevations', '124.2.0'
  
  s.ios.frameworks = ['Foundation', 'UIKit', 'CoreData', 'CoreLocation', 'CFNetwork']
end
