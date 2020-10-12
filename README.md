# ios-sdk
iOS SDK for third party

### Swift 5, iOS 10+

## Installation 
[CocoaPods](http://cocoapods.org) is the recommended way to add Zoomcar ios-sdk to your project.

#### Using CocoaPod
Simply add the following line to your Podfile and install the pod. 
add Source 
```
source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/ZoomCar/ios-cocoapod-specs.git'
```
```
pod 'ZoomcarSDK', '~> 0.0.3'
```

## Usage
Use the following line to import the SDK to ur class 
```
Import ZoomcarSDK 
```

Initialise the SDK using the following code
```
Zoomcar.setMerchantId("")
```

Set User Property using the following code
```
Zoomcar.setUser(user)
```
where user is of type ZoomcarUser as defined below
```
public struct ZoomcarUser {
    public var name: String?
    public var phoneNumber: String?
    public var email: String?
    public var authToken: String?
    
    public init() {}
}
```

Other Methods 
```
/// Triggers the Zoomcar Booking flow Post Booking To Start the Trip
///
/// - Parameters:
///   - bookingId: car booking id
///   - viewController: Controller invoking the method
public static func pickUpChecklist(bookingId: String, viewController: UIViewController?)
```

