//
//  ViewController.swift
//  Skeleton
//
//  Created by gonzalonunez on 02/07/2017.
//  Copyright (c) 2017 gonzalonunez. All rights reserved.
//

import UIKit
import Skeleton

class SkeletonTableViewController: UITableViewController {
  fileprivate static let kRowHeight: CGFloat = 70
  
  override func viewDidLoad() {
    super.viewDidLoad()
    title = "Contacts"
    
    tableView.isScrollEnabled = false
    tableView.separatorStyle = .none
    
    let nib = UINib(nibName: String(describing: SkeletonCell.self), bundle: nil)
    tableView.register(nib, forCellReuseIdentifier: String(describing: SkeletonCell.self))
  }
  
  //MARK: - UITableViewDataSource
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return Int(view.bounds.height/SkeletonTableViewController.kRowHeight) + 1
  }
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return SkeletonTableViewController.kRowHeight
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SkeletonCell.self), for: indexPath) as! SkeletonCell
    
    cell.gradientLayers.forEach { gradientLayer in
      let baseColor = cell.titlePlaceholderView.backgroundColor!
      gradientLayer.colors = [baseColor.cgColor,
                              baseColor.brightened(by: 0.93).cgColor,
                              baseColor.cgColor]
    }
    
    return cell
  }
  
  //MARK: - UITableViewDelegate
  
  override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
    let skeletonCell = cell as! SkeletonCell
    skeletonCell.slide(to: .right)
  }
}

extension UIColor {
  func brightened(by factor: CGFloat) -> UIColor {
    var h: CGFloat = 0, s: CGFloat = 0, b: CGFloat = 0, a: CGFloat = 0
    getHue(&h, saturation: &s, brightness: &b, alpha: &a)
    return UIColor(hue: h, saturation: s, brightness: b * factor, alpha: a)
  }
}
