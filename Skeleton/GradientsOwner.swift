//
//  GradientsOwner.swift
//  Pods
//
//  Created by Gonzalo Nunez on 2/12/17.
//
//

import UIKit

/// A protocol that allows grouping `CAGradientLayer`s together. Useful to have built-in sliding
/// behavior for all `CAGradientLayer`s in `gradientLayers`.
public protocol GradientsOwner: class {
  /// The `CAGradientLayer`s that will be sliding when `slide(to dir: Direction)` is called.
  var gradientLayers: [CAGradientLayer] { get }
}

public extension GradientsOwner {
  /// A convenient way to slide the `GradientOwner`'s corresponding `gradientLayers`.
  func slide(to dir: Direction, group: ((CAAnimationGroup) -> Void) = { _ in }) {
    gradientLayers.forEach({ $0.slide(to: dir, group: group) })
  }
  
  /// A convenient way to stop sliding the `GradientOwner`'s corresponding `gradientLayers`.
  func stopSliding() {
    gradientLayers.forEach({ $0.stopSliding() })
  }
}
