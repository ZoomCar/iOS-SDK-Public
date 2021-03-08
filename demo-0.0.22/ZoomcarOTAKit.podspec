Pod::Spec.new do |s|
  s.name             = 'ZoomcarOTAKit'
  s.version          = '0.0.22'
  s.summary          = 'ZoomcarOTAKit is to verify the user driving license and fill the checklist'
 
  s.description      = 'Two major features is being added in this versiom. 1. Verify User Profile using Idfy. 2. Fille the start and end checklist' 
  s.homepage         = 'https://github.com/ZoomCar/iOS-SDK-Public'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Zoomcar' => 'mobileapps@zoomcar.com' }
  s.ios.vendored_frameworks = 'ZoomcarSDK.framework'
  s.resources = [ "ZoomcarSDK.framework/ZoomcarSDKBundle.bundle" ]
  s.source           = { :http => 'https://github.com/ZoomCar/iOS-SDK-Public/raw/main/demo-0.0.22/ZoomcarSDK.zip' }
  #s.ios.deployment_target = '10.0'
  s.platform = :ios, '10.0'
  s.swift_version = '5.0'
  s.dependency 'Alamofire', '~> 4.9.1'
  s.ios.dependency 'AFNetworking', '~> 4.0'
  s.dependency 'PKHUD', '~> 5.3.0'
  s.dependency 'MaterialComponents/ShadowLayer', '= 116.0'
  s.dependency 'MaterialComponents/ShadowElevations', '= 116.0'
  
  s.frameworks = 'Foundation', 'UIKit', 'CoreData'  
end
