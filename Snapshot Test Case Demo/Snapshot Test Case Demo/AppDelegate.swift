//
//  AppDelegate.swift
//  Snapshot Test Case Demo
//
//  Created by Paul Rehkugler on 4/9/16.
//  Copyright © 2016 Binary Tapes. All rights reserved.
//

import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: - UIApplicationDelegate

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let window = UIWindow()
        window.makeKeyAndVisible()

        window.rootViewController = ViewController()

        self.window = window

        return true
    }
}

