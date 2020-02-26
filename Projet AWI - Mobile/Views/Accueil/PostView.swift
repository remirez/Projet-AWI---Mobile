//
//  PostView.swift
//  Projet AWI - Mobile
//
//  Created by user165586 on 26/02/2020.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import SwiftUI

struct PostView: View {
    var post : Post
    var body: some View {
        VStack{
           HStack(alignment: .top){
            Image("Flame").resizable().frame(width: 50.0, height: 50.0).cornerRadius(20)
            Text("Moundi Mazou Garirajhkjqshdkjhqskjhdkqljshdkqjhqsjdhlqksjhdlkqjshdkjqshdlkqsjhdklqjshdkqjshdklqsjhdkqlsjhdkqlsjhdkjqshdjkqs    \(post.texte) ")
            }
            HStack(){
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("J'aime").foregroundColor(Color.blue)
                }
                Spacer()
                NavigationLink(destination: CommentaireView()){
                    Text("Commenter").foregroundColor(Color.blue)
                }
                
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Signaler").foregroundColor(Color.blue)
                }
                Spacer()
            }
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: Post(id: 0, texte: "MOI",createur: ""))
    }
}
