//
//  ViewController.swift
//  HomeW3
//
//  Created by Milos Otasevic on 24/04/2019.
//  Copyright © 2019 Milos Otasevic. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeTabBarController()
    }
    
    func makeTabBarController(){
        let firstViewController = FirstViewController()
        firstViewController.tabBarItem.title = "First"
        firstViewController.tabBarItem.image = UIImage(named: "apple.png")
        
        let secondViewController = SecondViewController()
        secondViewController.tabBarItem.title = "Second"
        secondViewController.tabBarItem.image = UIImage(named:  "twitter.png")
        
        let thirdViewController = ThirdViewController()
        thirdViewController.tabBarItem.title = "Third"
        thirdViewController.tabBarItem.image = UIImage(named: "dashboard.png")
        
        viewControllers = [firstViewController,secondViewController,thirdViewController]
        
    }
}
