//
//  AppCoord.swift
//  HomeW3
//
//  Created by Milos Otasevic on 25/04/2019.
//  Copyright © 2019 Milos Otasevic. All rights reserved.
//

import UIKit

class AppCordinator{
    let window: UIWindow
    
    init(window: UIWindow = UIWindow(frame: UIScreen.main.bounds)){
        self.window = window
    }
    
    func start(){
        let vc = TabBarController()
        self.window.rootViewController = vc
        self.window.makeKeyAndVisible()
    }
}


