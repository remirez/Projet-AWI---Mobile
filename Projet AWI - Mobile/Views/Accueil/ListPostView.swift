//
//  ListPostView.swift
//  Projet AWI - Mobile
//
//  Created by user165586 on 27/02/2020.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import SwiftUI

struct ListPostView: View {
    var samplePosts = [Post(id: 0, texte: "Moi",createur: "",commentaires: []),
                       Post(id: 0, texte: "Toi",createur: "",commentaires: []),
                       Post(id: 0, texte: "Moi",createur: "",commentaires: []),
                       Post(id: 0, texte: "Toi",createur: "",commentaires: []),
                       Post(id: 0, texte: "Moi",createur: "",commentaires: []),
                       Post(id: 0, texte: "Toi",createur: "",commentaires: [])]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
                ForEach(samplePosts) { post in
                    PostView(post: post).padding(.top, 10)
                }
                Spacer()
        }.padding(.horizontal, 10)
            .tabItem{
                VStack{
                    Image(systemName: "house")
                    Text("Acceuil")
                }
            }
    }
}

struct ListPostView_Previews: PreviewProvider {
    static var previews: some View {
        ListPostView(samplePosts: [Post(id: 0, texte: "Moi",createur: "", commentaires: []), Post(id: 0, texte: "Toi",createur: "", commentaires: [])])
    }
}
