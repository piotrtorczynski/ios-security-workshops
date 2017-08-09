//
//  AppDelegate.swift
//  Woobly
//
//  Copyright © 2017 netguru. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    private lazy var blurEffect = UIVisualEffectView(effect: UIBlurEffect(style: .light))

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        let loginViewController = LoginViewController()
        let navigationController = UINavigationController(rootViewController: loginViewController)

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return true
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        blurEffect.frame = UIScreen.main.bounds
        window?.addSubview(blurEffect)
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        blurEffect.removeFromSuperview()
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }
}

