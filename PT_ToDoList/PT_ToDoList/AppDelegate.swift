//
//  AppDelegate.swift
//  PT_ToDoList
//
//  Created by DoT on 2014. 11. 30..
//  Copyright (c) 2014년 DoT. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow!

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window.backgroundColor = UIColor.whiteColor()
        
        let tmpTDL = ToDoList()
        tmpTDL.title = "할일"
        
        let tmpNC = UINavigationController(rootViewController: tmpTDL)
        
        self.window.rootViewController = tmpNC
        self.window.makeKeyAndVisible()
        
        return true
    }




}

