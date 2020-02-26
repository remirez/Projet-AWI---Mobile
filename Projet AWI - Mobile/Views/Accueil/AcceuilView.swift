//
//  AcceuilView.swift
//  Projet AWI - Mobile
//
//  Created by user165586 on 26/02/2020.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import SwiftUI

struct AcceuilView: View {
    @State var rechercher : String
    var posts : [Post]
    var body: some View {
            VStack{
                TextField("Rechercher", text: $rechercher).frame(height: 40)
                List(posts) { post in
                    PostView(post: post).padding(.top, 5)
                }
                Spacer()
            }.padding(.horizontal, 20).navigationBarBackButtonHidden(true).navigationBarTitle(Text("Our App"))
    }
}

struct AcceuilView_Previews: PreviewProvider {
    static var previews: some View {
        AcceuilView(rechercher: "", posts:[Post(id: 0, texte: "Moi",createur: ""), Post(id: 0, texte: "Toi",createur: "")])
    }
}
