//
//  AppDelegate.swift
//  Reanimated2Playground
//
//  Created by Brent Kelly on 29/11/2020.
//

import Foundation
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate/*, RCTBridgeDelegate*/ {
  
  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {

    //let bridge = RCTBridge(delegate: self, launchOptions: nil)
    let rootView = RCTRootView(bridge: /*bridge!*/BridgeManager.sharedInstance.bridge,
                               moduleName: "Reanimated2Playground",
                               initialProperties: nil)

    self.window = UIWindow(frame: UIScreen.main.bounds);
   
    let rootViewController = UIViewController();
    rootViewController.view = rootView;
    
    self.window!.rootViewController = rootViewController;
    self.window?.makeKeyAndVisible();
                                
    return true
  }
  
  /*func sourceURL(for bridge: RCTBridge!) -> URL! {
    return RCTBundleURLProvider.sharedSettings()?.jsBundleURL(forBundleRoot: "index", fallbackResource: nil)
  }*/
}
