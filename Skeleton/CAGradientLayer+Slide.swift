//
//  CAGradientLayer+Slide.swift
//  Skeleton
//
//  Created by Gonzalo Nunez on 3/16/16.
//  Copyright © 2017 Gonzalo Nunez. All rights reserved.
//

import UIKit

extension CABasicAnimation {
  /// A convenient way to apply a `GradientTransition` to a `CABasicAnimation`.
  func apply(gradientTransition: GradientTransition) {
    fromValue = NSValue(cgPoint: gradientTransition.from.cgPoint)
    toValue = NSValue(cgPoint: gradientTransition.to.cgPoint)
  }
}

public extension CAGradientLayer {
  /// The key used for the sliding animation.
  private static let kSlidingAnimationKey = "com.ZenunSoftware.Skeleton.SlidingAnimation"
  
  /**
   Slide a `CAGradientLayer` in a particular direction.
   
   - Important: If using `group`, modify the `CAAnimationGroup` responsibly. Setting the `CAAnimationGroup`s `animations` here **will overwrite the slide animations**.
   
   - parameter dir: The `Direction` to slide the `CAGradientLayer` in.
   
   - parameter group: A function that takes in and returns a `CAAnimationGroup`. Useful to modify the `CAAnimationGroup` that is used to animate the `CAGradientLayer`. By default, no modifications are made to the corresponding `CAAnimationGroup`.
  */
  func slide(to dir: Direction, group: ((CAAnimationGroup) -> Void) = { _ in }) {
    let startPointTransition = dir.transition(for: .startPoint)
    let endPointTransition = dir.transition(for: .endPoint)

    let startPointAnim = CABasicAnimation(keyPath: #keyPath(startPoint))
    startPointAnim.apply(gradientTransition: startPointTransition)

    let endPointAnim = CABasicAnimation(keyPath: #keyPath(endPoint))
    endPointAnim.apply(gradientTransition: endPointTransition)

    let animGroup = CAAnimationGroup()
    animGroup.animations = [startPointAnim, endPointAnim]
    animGroup.duration = 1
    animGroup.timingFunction = CAMediaTimingFunction(name: .easeIn)
    animGroup.repeatCount = .infinity
    
    group(animGroup)
    add(animGroup, forKey: CAGradientLayer.kSlidingAnimationKey)
  }
  
  /// Stop sliding the `CAGradientLayer`.
  func stopSliding() {
    removeAnimation(forKey: CAGradientLayer.kSlidingAnimationKey)
  }
}
