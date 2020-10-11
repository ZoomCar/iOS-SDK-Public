Pod::Spec.new do |s|
  s.name             = 'ZoomcarSDK'
  s.version          = '0.0.1'
  s.summary          = 'ZoomcarSDK is to verify the user driving license and fill the checklist'
 
  s.description      = 'Two major features is being added in this versiom. 1. Verify User Profile using Idfy. 2. Fille the start and end checklist' 
  s.homepage         = 'https://github.com/ZoomCar/ios-sdk'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Zoomcar' => 'mobileapps@zoomcar.com' }
  s.ios.vendored_frameworks = 'ZoomcarSDK.framework'
  s.source           = { :http => 'https://github.com/ZoomCar/iOS-SDK-Public/blob/main/demo-0.0.1/ZoomcarSDK.zip' }
 
  s.ios.deployment_target = '10.0'
  s.source_files = 'ZoomcarSDK/ZoomcarSDK/**/*.{swift}'
  s.resources = ['ZoomcarSDK/ZoomcarSDK/**/*.storyboard', 'ZoomcarSDK/ZoomcarSDK/**/*.xcassets', 'ZoomcarSDK/ZoomcarSDK/**/*.xcdatamodeld', 'ZoomcarSDK/ZoomcarSDK/**/*.xib', 'ZoomcarSDK/ZoomcarSDK/**/*.png', 'ZoomcarSDK/ZoomcarSDK/**/*.ttf']

  s.swift_version = '5.0'
  s.dependency 'Alamofire', '~> 4.9.1'
  s.dependency 'AFNetworking', '~> 4.0'
  s.dependency 'PKHUD', '~> 5.3.0'
  s.dependency 'MaterialComponents/ShadowLayer'
  s.dependency 'MaterialComponents/ShadowElevations'
  
  s.frameworks = 'Foundation', 'UIKit', 'CoreData'
  
end
