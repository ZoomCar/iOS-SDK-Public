# ios-sdk
iOS SDK for third party

### Swift 5, iOS 13+

## Installation 
[CocoaPods](http://cocoapods.org) is the recommended way to add Zoomcar ios-sdk to your project.

#### Using CocoaPod
Simply add the following line to your Podfile and install the pod. 
add Source 
```
source 'https://github.com/CocoaPods/Specs.git'
```
```
platform :ios, '13.0'

target 'AppTarget' do
  # Comment the next line if you don't want to use dynamic frameworks
    use_frameworks! :linkage => :static
    pod 'ZoomcarOTAKit', '0.0.55'
end

post_install do |installer|
  installer.pods_project.build_configurations.each do |config|
    config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
  end
end

```

## Usage
Use the following line to import the SDK to ur class 
```
Import ZoomcarSDK 
```

Initialise the SDK using the following code
```
Zoomcar.setup()
Zoomcar.setMerchantId("")
```

Set User Property using the following code
```
Zoomcar.setUser(user)
```
where user is of type ZoomcarUser as defined below
```
public struct ZoomcarUser {
        internal var name: String?
    internal var phoneNumber: String?
    internal var email: String?
    internal var authToken: String?
    internal var isProfileUploadComplete: Bool = false
    
    public init(name: String, authToken: String, phoneNumber: String, email: String, isProfileUploadComplete: Bool)
}
```

Other Methods 
```
/// Triggers the Zoomcar Booking flow Post Booking To Start the Trip
///
/// - Parameters:
///   - bookingId: car booking id
///   - type: checklist type MANNED_OLD_PICK_UP, MANNED_NEW_PICK_UP, MANNED_OLD_DROP_OFF, MANNED_NEW_DROP_OFF, KLE_PICK_UP, KLE_DROP_OFF
///   - customerCare:
///   - navigationController: Controller invoking the method
public static func showChecklist(bookingId: String, customerCare: String?, viewController: UIViewController, delegate: ZoomcarDelegate? = nil)
```

```
/// Triggers the Zoomcar User Verification Flow
///
/// - Parameters:
///   - navigationController: Controller invoking the method
public static func showUserProfile(viewController: UIViewController, delegate: ZoomcarDelegate? = nil)
```

