# NFreachability
WWDC2018 Apple released Network Framework which is a low-level access of network layer. It's providing lot of advance functionality and they are also encouraging developer to use it.

They are strongly discouraging to use `SCNetworkReachability`. Instead use `NWPathMonitor`. Here I just wrapped it to use as they described. 

## Installation
### Manual
Just drop the **NFReachability.swift** file into your project.

### CocoaPods
[CocoaPods][] is a dependency manager for Cocoa projects. To install NFReachability.swift with CocoaPods:

 1. Make sure CocoaPods is [installed][CocoaPods Installation].

 2. Update your Podfile to include the following:

    ``` ruby
    use_frameworks!
    pod 'NFReachability'
    ```

 3. Run `pod install`.

[CocoaPods]: https://cocoapods.org
[CocoaPods Installation]: https://guides.cocoapods.org/using/getting-started.html#getting-started
 
 4. In your code import NFReachability like so:
   `import NFReachability`

## Example - closures

Closure are run on the **main queue**.

```swift
        let monitor = NFReachability()
        monitor.observeReachability { [weak self] status in
            print(status)
        }
```

## LICENSE
MIT

