//
//  WatchSessionHandler.swift
//  ReactNativeAndWatch
//
//  Created by Donovan Hiland on 7/15/21.
//

import Foundation
import WatchConnectivity

@objc(WatchSessionHandler)
class WatchSessionHandler: NSObject, WCSessionDelegate {
  
  
  @objc public static let shared = WatchSessionHandler()
  
  private var session = WCSession.default
  
  override init() {
    super.init()
    
    if isSupported() {
      session.delegate = self
      session.activate()
    }
    
    print("isPaired?: \(session.isPaired), isWatchAppInstalled?: \(session.isWatchAppInstalled)")
  }
  
  func isSupported() -> Bool {
    return WCSession.isSupported()
  }
  
  func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
    print("phone/activationDidCompleteWith activationState:\(activationState) error:\(String(describing: error))" )
  }
  
  func sessionDidBecomeInactive(_ session: WCSession) {
    print("phone/sessionDidBecomeInactive: \(session)")
  }
  
  func sessionDidDeactivate(_ session: WCSession) {
    print("phone/sessionDidDeactivate: \(session)")
    
    self.session.activate()
  }
  
  func session(_ session: WCSession, didReceiveMessage message: [String : Any], replyHandler: @escaping ([String : Any]) -> Void) {
    print("phone/didReceiveMessageWReply: \(message)")
  }
  
  func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
    print("phone/didReceiveMessage: \(message)")
  }
}
