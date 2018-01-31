<p align="center">
    <img src="logo.png" width="300" max-width="50%" alt="Skeleton" />
</p>


<p align="center">
    <a href="http://www.gonzalonunez.me/Skeleton/">
        <img src="https://img.shields.io/cocoapods/p/Skeleton.svg?style=flat" />
    </a>
    <a href="https://cocoapods.org/pods/Skeleton">
        <img src="https://img.shields.io/cocoapods/v/Skeleton.svg?style=flat" />
    </a>
    <a href="https://github.com/Carthage/Carthage">
        <img src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat" />
    </a>
</p>

Skeleton is easy way to create sliding `CAGradientLayer` animations! It works great for creating skeleton screens for loading content. I plan on expanding this library with functionality that allows easily converting a regular `UITableViewCell` or `UICollectionViewCell` to it's skeleton screen equivalent, hence the name Skeleton. I just haven't figured out exactly how I want to do that yet!

## 👩‍💻 Usage

The entire library comes down to just one public-facing extension:

```swift
public extension CAGradientLayer {
  public func slide(to dir: Direction, group: ((CAAnimationGroup) -> Void) = { _ in })
  public func stopSliding()
}
```

With a bit of set up, you can get something like this:

<img src="https://github.com/gonzalonunez/Skeleton/blob/master/Resources/skeleton-logo-animation.gif" width=261/>

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
github "gonzalonunez/Skeleton" ~> 0.2.1
```

## 📄 License

Skeleton is available under the MIT license. See the LICENSE file for more info.
