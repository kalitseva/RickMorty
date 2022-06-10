//
//  AppDelegate.swift
//  RickMorty
//
//  Created by Майя Калицева on 09.06.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    static var deviceOrientation: UIInterfaceOrientationMask = .portrait
   //  private var tabbar = TabBarCoordinator()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = BaseViewController()
        window?.makeKeyAndVisible()
        return true
    }
}
