//
//  File.swift
//  Projet AWI - Mobile
//
//  Created by user165586 on 28/02/2020.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import Foundation

class AppState : ObservableObject {
    @Published var isConnected : Bool!
    @Published var posts : [Post]!
    @Published var utilisateur : Utilisateur!
    @Published var modifierUtilisateur : Bool = false
    private var url : URL!
    
    func configureState(isConnected : Bool){
        self.isConnected = isConnected
        self.parsePost()
        self.parseUtilisateur()
    }

    func parsePost() {
        /*
        url = URL(string: "http://project-awi-api.herokuapp.com/posts")!
        
        URLSession.shared.dataTask(with: url){data,_,_  in
            if let data = data {
               self.posts = try! JSONDecoder().decode([Post].self, from: data)
            }
            print(self.posts ?? "No data")
        }.resume()
        */
        // For test
        self.posts = [Post(id: 0, texte: "Moi",createur: "",commentaires: []),
        Post(id: 1, texte: "Toi",createur: "",commentaires: [
            Post(id: 6, texte: "Commentaire",createur: "", commentaires: []),
            Post(id: 7, texte: "Commentaire",createur: "", commentaires: []),
            Post(id: 8, texte: "Commentaire",createur: "", commentaires: [])
        ]),
        Post(id: 2, texte: "Moi",createur: "",commentaires: []),
        Post(id: 3, texte: "Toi",createur: "",commentaires: []),
        Post(id: 4, texte: "Moi",createur: "",commentaires: []),
        Post(id: 5, texte: "Toi",createur: "",commentaires: [])]
        
    }
    
    func parseUtilisateur() {
        /*
         url = URL(string: "http://project-awi-api.herokuapp.com/"Chemin")!
        
        URLSession.shared.dataTask(with: url){data,_,_  in
            if let data = data {
               self.posts = try! JSONDecoder().decode([Post].self, from: data)
            }
            print(self.posts ?? "No data")
        }.resume()
         */
        
        self.utilisateur = Utilisateur(pseudo: "Moundi", email: "1234@email.com", mdp: "password", _id: Id(id : "5e57df3c54572f443d3655e0"))
        // print(self.utilisateur!)
    }
    
    
}
