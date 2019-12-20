<p align="center">
    <img src="logo.png" width="300" max-width="50%" alt="Skeleton" />
</p>


<p align="center">
    <a href="https://developer.apple.com/swift">
        <img src="https://img.shields.io/badge/swift-5.0-red.svg?style=flat" />
    </a>
    <a href="https://cocoapods.org/pods/Skeleton">
        <img src="https://img.shields.io/cocoapods/v/Skeleton.svg?style=flat" />
    </a>
    <a href="https://github.com/Carthage/Carthage">
        <img src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat" />
    </a>
    <a href="https://opensource.org/licenses/MIT">
        <img src="https://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat" />
    </a>
    <a href="http://www.gonzalonunez.me/Skeleton/">
        <img src="https://img.shields.io/cocoapods/p/Skeleton.svg?style=flat" />
    </a>
</p>

Skeleton is an easy way to create sliding `CAGradientLayer` animations! It works great for creating skeleton screens:

<img src="https://github.com/gonzalonunez/Skeleton/blob/master/Resources/skeleton-logo-animation.gif" width=261/>

## 👩‍💻 Usage

The entire library comes down to just one public-facing extension:

```swift
public extension CAGradientLayer {
  public func slide(to dir: Direction, group: ((CAAnimationGroup) -> Void) = { _ in })
  public func stopSliding()
}
```

You can check out the example and the [documentation](http://www.gonzalonunez.me/Skeleton/) for more.

## 📚 Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## 🛠 Installation

Skeleton is available through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod "Skeleton"
```

Skeleton is also available through [Carthage](https://github.com/Carthage/Carthage). Add this to your Cartfile:

```
github "gonzalonunez/Skeleton" ~> 0.4.1
```

## 📄 License

Skeleton is available under the MIT license. See the LICENSE file for more info.
