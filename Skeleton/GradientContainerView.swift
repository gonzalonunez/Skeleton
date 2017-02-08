//
//  GradientContainerView.swift
//  Pods
//
//  Created by Gonzalo Nunez on 2/16/17.
//
//

import UIKit

/// A view that contains a `GradientView`. Useful for sliding a `CAGradientLayer` without affecting the bottom-most `CALayer`.
public class GradientContainerView: UIView {
  fileprivate let gradientView = GradientView(frame: .zero)
  
  override public init(frame: CGRect) {
    super.init(frame: frame)
    setUpGradientView()
  }
  
  required public init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setUpGradientView()
  }
  
  /// Sets up the `GradientView` with constraints that that cause it to fill the `UIView` entirely.
  fileprivate func setUpGradientView() {
    gradientView.translatesAutoresizingMaskIntoConstraints = false
    addSubview(gradientView)
    
    let top = gradientView.topAnchor.constraint(equalTo: topAnchor)
    let bottom = gradientView.bottomAnchor.constraint(equalTo: bottomAnchor)
    let leading = gradientView.leadingAnchor.constraint(equalTo: leadingAnchor)
    let trailing = gradientView.trailingAnchor.constraint(equalTo: trailingAnchor)
    
    NSLayoutConstraint.activate([top, bottom, leading, trailing])
  }
}

public extension GradientContainerView {
  /// A convenient way to access the `GradientContainerView`'s corresponding `CAGradientLayer`.
  public var gradientLayer: CAGradientLayer {
    return gradientView.gradientLayer
  }
}
