//
//  AppDelegate.swift
//  GtSdkDemo-swift
//
//  Created by ak on 15/10/12.
//  Copyright © 2020 Gexin Interactive (Beijing) Network Technology Co.,LTD. All rights reserved.
//

import UIKit
import Network

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  var tabBarController = TabBarController()
  lazy var homePage = {
    return tabBarController.homeViewController
  }()
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      window = UIWindow(frame: UIScreen.main.bounds)
      window?.rootViewController = tabBarController
      window?.makeKeyAndVisible()
      if #available(iOS 14.0, *) {
          //                  NetworkChannel().connect()
          TestAA().test()
      }
      return true
  }
  
}
