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
        
        if #available(iOS 9.0, *) {
            let top = gradientView.topAnchor.constraint(equalTo: topAnchor)
            let bottom = gradientView.bottomAnchor.constraint(equalTo: bottomAnchor)
            let leading = gradientView.leadingAnchor.constraint(equalTo: leadingAnchor)
            let trailing = gradientView.trailingAnchor.constraint(equalTo: trailingAnchor)
            NSLayoutConstraint.activate([top, bottom, leading, trailing])
            
        } else {
            // Fallback on earlier versions
            
            self.addConstraintsWithFormat("H:|[v0]|", views: gradientView)
            self.addConstraintsWithFormat("V:|[v0]|", views: gradientView)
        }
    }
}

public extension GradientContainerView {
    /// A convenient way to access the `GradientContainerView`'s corresponding `CAGradientLayer`.
    public var gradientLayer: CAGradientLayer {
        return gradientView.gradientLayer
    }
}


// MARK: - UIView

public extension UIView {
    
    public func addConstraintsWithFormat(_ format: String, views: UIView...) {
        var viewsDictionary = [String: UIView]()
        
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewsDictionary[key] = view
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
    
    
    @available(iOS 9.0, *)
    public func anchorToTop(_ top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil) {
        
        anchorWithConstantsToTop(top, left: left, bottom: bottom, right: right, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0)
    }
    
    @available(iOS 9.0, *)
    public func anchorWithConstantsToTop(_ top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil, topConstant: CGFloat = 0, leftConstant: CGFloat = 0, bottomConstant: CGFloat = 0, rightConstant: CGFloat = 0) {
        
        _ = anchor(top, left: left, bottom: bottom, right: right, topConstant: topConstant, leftConstant: leftConstant, bottomConstant: bottomConstant, rightConstant: rightConstant)
    }
    
    @available(iOS 9.0, *)
    public func anchor(_ top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil, topConstant: CGFloat = 0, leftConstant: CGFloat = 0, bottomConstant: CGFloat = 0, rightConstant: CGFloat = 0, widthConstant: CGFloat = 0, heightConstant: CGFloat = 0) -> [NSLayoutConstraint] {
        translatesAutoresizingMaskIntoConstraints = false
        
        var anchors = [NSLayoutConstraint]()
        
        if let top = top {
            anchors.append(topAnchor.constraint(equalTo: top, constant: topConstant))
        }
        
        if let left = left {
            anchors.append(leftAnchor.constraint(equalTo: left, constant: leftConstant))
        }
        
        if let bottom = bottom {
            anchors.append(bottomAnchor.constraint(equalTo: bottom, constant: -bottomConstant))
        }
        
        if let right = right {
            anchors.append(rightAnchor.constraint(equalTo: right, constant: -rightConstant))
        }
        
        if widthConstant > 0 {
            anchors.append(widthAnchor.constraint(equalToConstant: widthConstant))
        }
        
        if heightConstant > 0 {
            anchors.append(heightAnchor.constraint(equalToConstant: heightConstant))
        }
        
        anchors.forEach({$0.isActive = true})
        
        return anchors
    }
}
