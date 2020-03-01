//
//  AcceuilView.swift
//  Projet AWI - Mobile
//
//  Created by user165586 on 01/03/2020.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import SwiftUI

struct AcceuilView: View {
    @EnvironmentObject var appState : AppState
    var body: some View {
        VStack{
            if (self.appState.isConnected){
                Acceuil()
            }else{
                Acceuil()
            }
        }
    }
}

struct Acceuil: View {
    @EnvironmentObject var appState : AppState
    var mode : NavigationBarItem.TitleDisplayMode {
        get {
            if (self.appState.isConnected){
                return .automatic
            }else{
                return .inline
            }
        }
    }
    var body: some View {
        NavigationView{
            ListPostView(posts: self.appState.posts!, title: "Our App").navigationBarTitle("Our App", displayMode: mode)
                .navigationBarItems(trailing:
                VStack{
                if (!self.appState.isConnected){
                    NavigationLink(destination: ConnexionView(), label: {
                        Image(systemName: "pencil").font(.system(size: 25))
                    })
                }else{
                    Button(action: {
                        self.appState.isConnected.toggle()
                    }) {
                        Image(systemName: "house").font(.system(size: 25))
                    }
                }
            })
        }
        
        
    }
}
/*
struct AcceuilView_Previews: PreviewProvider {
    static var previews: some View {
        AcceuilView()
    }
}
*/
