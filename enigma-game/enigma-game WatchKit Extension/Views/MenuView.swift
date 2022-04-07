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
            VStack {
                
                Image("gifImage").resizable().scaledToFit()
                Text("Enigma").fontWeight(.bold).font(.system(size: 24))
                                
                Button("Tap to play") {
                    withAnimation {
                        viewRouter.currentPage = .tutorial
                       }
                }.foregroundColor(.orange)
                
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
