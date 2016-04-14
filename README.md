<p align="center"><img src="https://cloud.githubusercontent.com/assets/789622/14542258/bc0330bc-0296-11e6-9631-67e65cf342c6.png" height="180"/>

<p align="center">
<a href="https://cocoapods.org"><img src="https://img.shields.io/cocoapods/v/SimpleKVO.svg"></a>
<a href="https://github.com/Carthage/Carthage"><img src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat"></a>
<a href="http://cocoadocs.org/docsets/SimpleKVO"><img src="https://img.shields.io/cocoapods/p/SimpleKVO.svg?style=flat)"></a>
</p>

[Key-Value-Observing](https://developer.apple.com/library/ios/documentation/General/Conceptual/DevPedia-CocoaCore/KVO.html) is so obvious and commonly used technique in Objective-C. Observe some value from the model, what could be easier? There is definitely should be something for this in Swift. But... Not really. And it's not available in pure swift out the box. **SimpleKVO** library is one of the possible solutions for KVO in Swift.

## Getting Started

- Check out my blog post about [Key-Value Observing in Swift](http://tulusha.com/kvo-in-swift)

## Usage

Here is an example of how you might implement key-value observing in pure-Swift with **SimpleKVO** module.

Make any property that you want to observe in your code of special `Observable` class:

```swift
class Bird {
    let name = Observable<String>("")
    let canFly = Observable<Bool>(false)
}
```

And here is code example that handles observing:

```swift
var bird = Bird()
bird.name.didChange.addHandler(self, handler: #selector(birdNameChanged))
bird.name <- "Pinguin"
...

func birdNameChanged(oldValue: String, newValue: String) {
    // do something
}
```

## Requirements

- iOS 7.0+ (iOS 8.0+ for `Cartage` and `CocoaPods`)
- Xcode 7+, Swift 2+

## Installation<a name="installation"></a>

### [CocoaPods](http://cocoapods.org)

To install SimpleKVO add a dependency to your Podfile:

```ruby
# source 'https://github.com/CocoaPods/Specs.git'
# use_frameworks!
# platform :ios, "8.0"

pod "SimpleKVO"
```

### [Carthage](https://github.com/Carthage/Carthage)

To install SimpleKVO add a dependency to your Cartfile:

```
github "alokard/SimpleKVO"
```

### Import

Import installed modules in your source files

```swift
import SimpleKVO
```

## Contacts

<a href="https://github.com/alokard">
<img src="https://cloud.githubusercontent.com/assets/1567433/6521218/9c7e2502-c378-11e4-9431-c7255cf39577.png" height="44" hspace="2"/>
</a>
<a href="https://twitter.com/alokard">
<img src="https://cloud.githubusercontent.com/assets/1567433/6521243/fb085da4-c378-11e4-973e-1eeeac4b5ba5.png" height="44" hspace="2"/>
</a>
<a href="https://ua.linkedin.com/in/eugenetulusha">
<img src="https://cloud.githubusercontent.com/assets/1567433/6521256/20247bc2-c379-11e4-8e9e-417123debb8c.png" height="44" hspace="2"/>
</a>

## License

SimpleKVO is available under the MIT license. See the LICENSE file for more info.



