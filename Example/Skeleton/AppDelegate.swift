//
//  AppDelegate.swift
//  Skeleton
//
//  Created by gonzalonunez on 02/07/2017.
//  Copyright (c) 2017 gonzalonunez. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    window = UIWindow(frame: UIScreen.main.bounds)
    
    let skeletonTableVC = SkeletonTableViewController(style: .plain)
    let root = UINavigationController(rootViewController: skeletonTableVC)
    
    window?.rootViewController = root
    window?.makeKeyAndVisible()
    
    return true
  }
}

