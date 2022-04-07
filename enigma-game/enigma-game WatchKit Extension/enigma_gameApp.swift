//
//  enigma_gameApp.swift
//  enigma-game WatchKit Extension
//
//  Created by Giovanni Madalozzo on 05/04/22.
//

import SwiftUI

@main
struct enigma_gameApp: App {
    @StateObject var viewRouter = ViewRouter()
    
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                MotherView().environmentObject(viewRouter)
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
