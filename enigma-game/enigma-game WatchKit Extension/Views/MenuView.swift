//
//  MenuView.swift
//  enigma-game WatchKit Extension
//
//  Created by Julia Silveira de Souza on 06/04/22.
//

import SwiftUI

struct MenuView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 30) {
                
                Image("Logo").resizable().scaledToFit()
                
                Button("Tap to play"){
                    withAnimation {
                        viewRouter.currentPage = .tutorial
                       }
                }.foregroundColor(.purple).scaledToFit()
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
