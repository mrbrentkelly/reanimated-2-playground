//
//  BridgeManager.swift
//  Reanimated2Playground
//
//  Created by Brent Kelly on 29/11/2020.
//

import Foundation

class BridgeManager: NSObject, RCTBridgeDelegate {
  lazy var bridge: RCTBridge = {
      return RCTBridge(delegate: self, launchOptions: nil)
  }()
  
  static let sharedInstance = BridgeManager()

  private override init() {
      super.init()
  }
  
  func sourceURL(for bridge: RCTBridge!) -> URL! {
    return RCTBundleURLProvider.sharedSettings()?.jsBundleURL(forBundleRoot: "index", fallbackResource: nil)
  }
}
