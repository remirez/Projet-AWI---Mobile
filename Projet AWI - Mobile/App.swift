//
//  ContentView.swift
//  Projet AWI - Mobile
//
//  Created by Remy McConnell on 2/25/20.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import SwiftUI

struct App: View {
    
    var body: some View {
        NavigationView{
            VStack{
                Logo(bottom: 30)
                Form(pseudo: "", mdp: "", topButton: 20)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        App()
    }
}
