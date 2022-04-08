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
    @StateObject var game = Game(didWin: false)
    
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                MotherView().environmentObject(viewRouter).environmentObject(game)
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
