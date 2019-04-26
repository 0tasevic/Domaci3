//
//  AppDelegate.swift
//  HomeW3
//
//  Created by Milos Otasevic on 24/04/2019.
//  Copyright © 2019 Milos Otasevic. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    let appCordinator = AppCordinator()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) ->Bool {
        appCordinator.start()
        return true
    }
}

