//
//  ReactNativeAndWatchApp.swift
//  watch Extension
//
//  Created by Donovan Hiland on 7/15/21.
//

import SwiftUI

@main
struct ReactNativeAndWatchApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
