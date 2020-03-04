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
            ListPostView(title: "Our App", rech: false, posts: [])
                .navigationBarTitle("Our App", displayMode: mode)
                .navigationBarItems(trailing:
                VStack{
                if (!self.appState.isConnected){
                    NavigationLink(destination: ConnexionView(), label: {
                        Image(systemName: "power").font(.system(size: 25)).foregroundColor(Color.blue)
                    })
                }else{
                    Button(action: {
                        self.appState.isConnected.toggle()
                    }) {
                        Image(systemName: "power").font(.system(size: 25)).foregroundColor(Color.red)
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
