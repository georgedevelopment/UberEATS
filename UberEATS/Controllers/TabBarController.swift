//
//  TabBarController.swift
//  UberEATS
//
//  Created by WorldMobile on 11/25/17.
//  Copyright © 2017 WorldMobile. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    lazy var homeNavController: UINavigationController = {
        let nav = UINavigationController(rootViewController: self.homeViewController)
        return nav
    }()
    
    lazy var homeViewController: HomeViewController = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let vc = HomeViewController(collectionViewLayout: layout)
        vc.tabBarItem = UITabBarItem(title: nil, image: #imageLiteral(resourceName: "home-page-50"), selectedImage: #imageLiteral(resourceName: "home-page-filled-50"))
        return vc
    }()
    
    let searchViewController: SearchViewController = {
        let vc = SearchViewController()
        vc.tabBarItem = UITabBarItem(title: nil, image: #imageLiteral(resourceName: "search-50"), tag: 2)
        return vc
    }()
    
    lazy var orderViewController: OrderViewController = {
        let vc = OrderViewController()
        vc.tabBarItem = UITabBarItem(title: nil, image: #imageLiteral(resourceName: "icons8-bill-50"), selectedImage: #imageLiteral(resourceName: "icons8-bill-filled-50"))
        return vc
    }()
    
    lazy var userViewController: UserViewController = {
        let vc = UserViewController()
        vc.delegate = self.homeViewController
        vc.tabBarItem = UITabBarItem(title: nil, image: #imageLiteral(resourceName: "icons8-user-50"), selectedImage: #imageLiteral(resourceName: "icons8-user-filled-50"))
        return vc
    }()
    
    let onboardViewController: OnboardingViewController = {
        let vc = OnboardingViewController()
        return vc
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.isTranslucent = false
        self.view.backgroundColor = .white
        self.setViewControllers([
            homeNavController,
            searchViewController,
            orderViewController,
            userViewController], animated: true)
    }
}

