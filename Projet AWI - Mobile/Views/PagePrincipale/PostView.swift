//
//  PostView.swift
//  Projet AWI - Mobile
//
//  Created by user165586 on 26/02/2020.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import SwiftUI

struct PostView: View {
    @EnvironmentObject var appState : AppState
    var post : Post
    var com : Bool
    var imgGauche : Bool{
        get{
            // Ici on doit coder la logique pour afficher l'image à gauche ou à droite
            return true
        }
    }
    var  imgDroite : Bool {
        get{
            // Ici on doit coder la logique pour afficher l'image à gauche ou à droite
            return false
        }
    }
    var body: some View {
        VStack{
           HStack(alignment: .top){
                if (imgGauche){
                    Image("Flame").resizable().frame(width: 40.0, height: 40.0).cornerRadius(10)
                }
                Text("Moundi Mazou Garirajhkjqshdkjhqskjhdkqljshdkqjhqsjdhlqksjhdlkqjshdkjqshdlkqsjhdklqjshdkqjshdklqsjhdkqlsjhdkqlsjhdkjqshdjkqs    \(post.texte) ")
                if (imgDroite){
                    Image("Flame").resizable().frame(width: 40.0, height: 40.0).cornerRadius(10)
                }
            }
            
            if(self.appState.isConnected){
                HStack(){
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "hand.thumbsup")
                    }
                    Spacer()
                    
                    if(!self.com){
                        NavigationLink(destination: CommentaireView(post: post, commentaire: "")){
                            Image(systemName: "message.circle")
                        }
                    }
                    
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "exclamationmark.triangle")
                    }
                    Spacer()
                }
            }
        }
    }
}

/*struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: Post(id: 0, texte: "MOI",createur: "", commentaires:[]), com: true)
    }
}
 */
