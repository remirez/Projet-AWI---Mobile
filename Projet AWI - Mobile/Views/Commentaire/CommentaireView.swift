//
//  CommentaireView.swift
//  Projet AWI - Mobile
//
//  Created by user165586 on 26/02/2020.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import SwiftUI

struct CommentaireView: View {
    @EnvironmentObject var appState : AppState
    @State var post: Post
    @State var commentaire : String
    var body: some View {
            List{
                PostView(post: post, comment: true)
                // Ici il faut afficher les commentaires en les récupérant de la base de données
                HStack{
                    TextField("Commenter", text: self.$commentaire)
                        .padding(20)
                            .frame(height: 40.0)
                            .background(Color(red: 211/255, green: 211/255, blue: 211/255, opacity: 1))
                        .cornerRadius(10)
                    Button(action: {
                        // A coder la logique
                    }){
                        Image(systemName: "tray.and.arrow.up.fill")
                            .font(.system(size: 25))
                    }
                }.padding(.vertical, 15.0)
            }
    }
}

/*struct CommentaireView_Previews: PreviewProvider {
    static var previews: some View {
        CommentaireView(post: Post(id: 0, texte: "MOI",createur: "",
                                   commentaires: [Post(id: 0, texte: "Commentaire",createur: "", commentaires: [])]), commentaire: "")
    }
}
*/
