//
//  GradientPoint.swift
//  Pods
//
//  Created by Gonzalo Nunez on 2/7/17.
//
//

import Foundation

/// Represents a valid point for a CAGradientLayer's `startPoint` or `endPoint` when beginning or ending a slide.
struct GradientPoint {
  /// Represents a valid coordinate for either the `x` or the `y` of a `GradientPoint`.
  enum Location: CGFloat {
    case `default` = 0.5
    
    case negativeOne = -1
    case zero = 0
    case one
    case two
  }
  
  /// The x coordinate of the `GradientPoint`
  let x: Location
  
  /// The y coordinate of the `GradientPoint`
  let y: Location
  
  /// Initializes a `GradientPoint` given an x and a y. They both default to `.default`.
  init(x: Location = .default, y: Location = .default) {
    self.x = x
    self.y = y
  }
  
  /// A convenient way to convert a `GradientPoint` to a `CGPoint`.
  var cgPoint: CGPoint {
    return CGPoint(x: x.rawValue, y: y.rawValue)
  }
}
