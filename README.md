# Skeleton :skull:

<a href="https://cocoapods.org/pods/Skeleton">
    <img src="https://img.shields.io/cocoapods/v/Skeleton.svg?style=flat"
         alt="Pods Version">
</a>
<a href="https://gonzalonunez.me/Skeleton/">
    <img src="https://img.shields.io/cocoapods/p/Skeleton.svg?style=flat"
         alt="Platforms">
</a>

An easy way to create sliding `CAGradientLayer` animations! Works great for creating skeleton screens for loading content.
<br>
<br>
<img src="https://github.com/gonzalonunez/Skeleton/blob/master/Resources/skeleton-logo-animation.gif" width=261/>
<br>
<img src="https://github.com/gonzalonunez/Skeleton/blob/master/Resources/skeleton-logo-animation.gif" width=261/>
<br>
<img src="https://github.com/gonzalonunez/Skeleton/blob/master/Resources/skeleton-logo-animation.gif" width=261/>
<br>
<br>
I plan on expanding this library with functionality that allows easily converting a regular `UITableViewCell` or `UICollectionViewCell` to it's skeleton screen equivalent, hence the name Skeleton. I just haven't figured out exactly how I want to do that yet! :sweat_smile:

----------------

## Overview

In essence, the entire library comes down to just one extension:

```swift
public extension CAGradientLayer {
  public func slide(to dir: Direction, group: ((CAAnimationGroup) -> CAAnimationGroup) = { $0 })
  public func stopSliding()
}
```
Everything else is there to help you out and provide convenience! You can check out the [documentation](http://www.gonzalonunez.me/Skeleton/) for more.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

Skeleton is available through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod "Skeleton"
```

## Author

Gonzalo Nuñez, hello@gonzalonunez.me

## License

Skeleton is available under the MIT license. See the LICENSE file for more info.
