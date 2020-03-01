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
    @State var commentaire : String
    var body: some View {
        VStack{
            ScrollView(.vertical, showsIndicators: true){
                PostView(post: post, com: true)
                ForEach(self.post.commentaires){commentaire in
                    PostView(post: commentaire, com: true)
                }
                Spacer()
                HStack{
                    TextField("Commenter", text: self.$commentaire)
                        .frame(height: 40.0)
                    Button(action: {
                        // A coder la logique
                    }){
                        Image(systemName: "tray.and.arrow.up.fill")
                            .frame(height: 30.0)
                    }
                }.padding(.bottom, 15.0)
            }
        }
        .padding(.horizontal, 20.0)
    }
}

/*struct CommentaireView_Previews: PreviewProvider {
    static var previews: some View {
        CommentaireView(post: Post(id: 0, texte: "MOI",createur: "",
                                   commentaires: [Post(id: 0, texte: "Commentaire",createur: "", commentaires: [])]), commentaire: "")
    }
}
*/
