//
//  RechercherView.swift
//  Projet AWI - Mobile
//
//  Created by user165586 on 27/02/2020.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import SwiftUI

struct RechercherView: View {
    @State var rechercher :  String
    var body: some View {
        VStack {
            TextField("Rechercher", text: $rechercher).frame(height: 40)
            Spacer()
        }.padding(.horizontal, 20).background(Color.green)
            .tabItem{
                VStack{
                    Image(systemName: "magnifyingglass")
                   Text("Rechercher")
                }
        }
    }
}

struct RechercherView_Previews: PreviewProvider {
    static var previews: some View {
        RechercherView(rechercher: "")
    }
}
