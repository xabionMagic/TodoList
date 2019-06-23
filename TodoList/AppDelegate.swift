//
//  AppDelegate.swift
//  TodoList
//
//  Created by Saroj on 5/14/19.
//  Copyright © 2019 Saroj. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        print(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last! as String)
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        
        print("applicationWillResignActive")
        
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        print("applciationDidEnterBackground")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
      print("applicationWillEnterForeground")
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        print("applicationDidBecomeActive")
    }

    func applicationWillTerminate(_ application: UIApplication) {
        print("applicationWillTerminate")
    }


}

