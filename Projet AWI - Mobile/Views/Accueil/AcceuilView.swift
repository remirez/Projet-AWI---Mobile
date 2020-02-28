//
//  AcceuilView.swift
//  Projet AWI - Mobile
//
//  Created by user165586 on 26/02/2020.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import SwiftUI

struct AcceuilView: View {
    var samplePosts = [Post(id: 0, texte: "Moi",createur: "",commentaires: []),
    Post(id: 0, texte: "Toi",createur: "",commentaires: []),
    Post(id: 0, texte: "Moi",createur: "",commentaires: []),
    Post(id: 0, texte: "Toi",createur: "",commentaires: []),
    Post(id: 0, texte: "Moi",createur: "",commentaires: []),
    Post(id: 0, texte: "Toi",createur: "",commentaires: [])]
    
    var body: some View {
        TabView {
            ListPostView(samplePosts: samplePosts).tag(1)
        
            RechercherView(rechercher: "").tag(2)
            
            ProfileView().tag(3)
            
        }.navigationBarTitle(Text("Our App"), displayMode: .inline).navigationBarBackButtonHidden(true)
    }
}

struct AcceuilView_Previews: PreviewProvider {
    static var previews: some View {
        AcceuilView()
    }
}
