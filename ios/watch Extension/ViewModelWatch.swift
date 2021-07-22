//
//  ViewModelWatch.swift
//  Watch Extension
//
//  Created by Donovan Hiland on 7/15/21.
//

import Foundation
import WatchConnectivity

class ViewModelWatch: NSObject, WCSessionDelegate, ObservableObject {
  
  private var session = WCSession.default
  
  @Published var messageText = ""
  
  init(session: WCSession = .default) {
    super.init()
    self.session = session
    self.session.delegate = self
    session.activate()
  }
  
  func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
    
  }
  
  func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
    print("watch/didReceiveMessage: \(message)")
  }
  
  func send() {
    session.sendMessage(["some key": "Sending Message"], replyHandler: nil)
  }
}
