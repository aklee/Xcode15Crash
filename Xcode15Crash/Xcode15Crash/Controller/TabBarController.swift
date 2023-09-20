//
//  TabBarController.swift
//  GtSdkDemo-swift
//
//  Created by ak on 2020/03/20.
//  Copyright © 2020 Gexin Interactive (Beijing) Network Technology Co.,LTD. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    var homeViewController = HomeViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpAllChildViewController()
    }
    
    func setUpAllChildViewController() {
        setUpOneChildViewController(homeViewController, UIImage(named: "home"), UIImage(named: "home_select"), "首页")
    }
    
    func setUpOneChildViewController(_ viewController: UIViewController, _ image: UIImage?, _ selectedImage: UIImage?, _ title: String) {
        viewController.title = title
        viewController.tabBarItem.image = image
        viewController.tabBarItem.selectedImage = selectedImage
        addChild(NavigationController(rootViewController: viewController))
    }

}
