//
//  Direction.swift
//  Pods
//
//  Created by Gonzalo Nunez on 2/7/17.
//
//

import Foundation

/// Represents a `CAGradientLayer`'s `startPoint` or `endPoint`, respectively.
enum GradientProperty {
  case startPoint
  case endPoint
}

/// The direction to slide in.
public enum Direction {
  case right
  case left
  //case up
  //case down
  
  /*
   For a full gradient slide, the gradient starts off-screen and slides all the way through until it's off-screen on the otherside.
   Our gradient has a length of 1 at all times, we don't stretch it in any way.
   Therefore, `startPoint` must go from -1 to 1 and `endPoint` must go from 0 to 2, or the opposite of this if we're going in the other direction.
   Same applies for vertical directions, except we're dealing with the y and not the x.
   
   s = startPoint
   e = endPoint
   xxx = CAGradientLayer
   ▄▄▄ = Gradient
   
    s        e
    ▄▄▄▄▄▄▄▄▄▄
   |----------|xxxxxxxxxx|----------|
   -1         0          1          2
   
      ---->  ---->   ---->   ---->
   
               s        e
               ▄▄▄▄▄▄▄▄▄▄
   |----------|xxxxxxxxxx|----------|
   -1         0          1          2
   
      ---->  ---->   ---->   ---->
   
                          s        e
                          ▄▄▄▄▄▄▄▄▄▄
   |----------|xxxxxxxxxx|----------|
   -1         0          1          2
   */
  
  /// Creates a `GradientTransition` for the corresponding `GradientProperty`.
  func transition(for point: GradientProperty) -> GradientTransition {
    switch (self, point) {
    case (.right, .startPoint):
      return GradientTransition(
        from: GradientPoint(x: .negativeOne),
        to: GradientPoint(x: .one))
    case (.right, .endPoint):
      return GradientTransition(
        from: GradientPoint(x: .zero),
        to: GradientPoint(x: .two))
    case (.left, .startPoint):
      return GradientTransition(
        from: GradientPoint(x: .one),
        to: GradientPoint(x: .negativeOne))
    case (.left, .endPoint):
      return GradientTransition(
        from: GradientPoint(x: .two),
        to: GradientPoint(x: .zero))
    }
  }
}
