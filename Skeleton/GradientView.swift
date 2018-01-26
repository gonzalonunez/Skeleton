//
//  GradientOwner.swift
//  Skeleton
//
//  Created by Gonzalo Nunez on 3/16/16.
//  Copyright © 2017 Gonzalo Nunez. All rights reserved.
//

import UIKit

/// A view who's `layerClass` is a `CAGradientLayer`.
class GradientView: UIView {
  override open class var layerClass: AnyClass {
    return CAGradientLayer.self
  }
}

extension GradientView {
  /// A convenient way to access the `GradientView`'s corresponding `CAGradientLayer`.
  var gradientLayer: CAGradientLayer {
    return layer as! CAGradientLayer
  }
  
  /// A convenient way to slide the `GradientView`'s corresponding `CAGradientLayer`.
  func slide(to dir: Direction, group: ((CAAnimationGroup) -> Void) = { _ in }) {
    return gradientLayer.slide(to: dir, group: group)
  }
  
  /// A convenient way to stop sliding the `GradientView`'s corresponding `CAGradientLayer`.
  func stopSliding() {
    return gradientLayer.stopSliding()
  }
}
