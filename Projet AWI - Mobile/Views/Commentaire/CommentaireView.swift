//
//  CommentaireView.swift
//  Projet AWI - Mobile
//
//  Created by user165586 on 26/02/2020.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import SwiftUI

struct CommentaireView: View {
    @State var post: Post
    var body: some View {
        VStack{
            PostView(post: post)
        }
    }
}

struct CommentaireView_Previews: PreviewProvider {
    static var previews: some View {
        CommentaireView(post: Post(id: 0, texte: "MOI",createur: "", commentaires: ["jkfhskjdfh", "qdqsdqsd", "sdfsdf", "sqjhgfjksq"]))
    }
}
