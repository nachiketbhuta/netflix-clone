//
//  ViewController.swift
//  Netlfix Clone
//
//  Created by Nachiket Bhuta on 17/12/22.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeTabView = UINavigationController(rootViewController: HomeViewController())
        let upcomingTabView = UINavigationController(rootViewController: UpcomingViewController())
        let searchTabView = UINavigationController(rootViewController: SearchViewController())
        let downloadsTabView = UINavigationController(rootViewController: DownloadsViewController())
        
        homeTabView.tabBarItem.image = UIImage(systemName: "house")
        upcomingTabView.tabBarItem.image = UIImage(systemName: "play.circle")
        searchTabView.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        downloadsTabView.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        homeTabView.title = "Home"
        upcomingTabView.title = "Upcoming"
        searchTabView.title = "Search"
        downloadsTabView.title = "Downloads"
        
        tabBar.tintColor = .label
        
        setViewControllers([homeTabView, upcomingTabView, searchTabView, downloadsTabView], animated: true)
    }


}

