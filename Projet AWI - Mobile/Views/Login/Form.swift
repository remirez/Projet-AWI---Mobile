//
//  Form.swift
//  Projet AWI - Mobile
//
//  Created by user165586 on 25/02/2020.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import SwiftUI

struct Form: View {
    @State var pseudo: String
    @State var mdp: String
    var topButton : CGFloat
    
    var body: some View {
        VStack{
            VStack{
                VStack(alignment: .leading, spacing: 10.0){
                    Text("Pseudo")
                        .font(.title)
                        .fontWeight(.medium)
                    TextField("Entrer votre pseudo", text: $pseudo)
                        .frame(height: 40.0)
                    
                }.padding(.bottom)
                
                VStack(alignment: .leading, spacing: 10){
                    Text("Mot de passe")
                    .font(.title)
                    .fontWeight(.medium)
                    SecureField("Entrer votre mot de passe", text: $mdp)
                        .frame(height: 40.0)
                }
                
            }.padding(.bottom, topButton)
            
            NavigationLink(destination: AcceuilView()){ Text("Connexion").foregroundColor(Color.white).padding(40.0)
                .frame(height: 50.0).background(Color.green).cornerRadius(20)
                }
            
            NavigationLink(destination: RegisterView(pseudo: "", mdp: "", email: "", cmdp: "", topButton: 15)){
                Text("Pas de compte ? Inscrivez-vous").foregroundColor(Color.blue)
            }.padding(.top, 10)
            Spacer()
        }
        .padding(.horizontal, 20.0)
        
    }
}

func getListeDesPosts() -> [Post] {
    
    // Cette fonction doit extraire la liste des posts de la base de données et la retourner
    // Cette fonstion doit etre completer
    
    return [Post(id: 0, texte: "", createur: "", commentaires: [])]
}

struct Form_Previews: PreviewProvider {
    static var previews: some View {
        Form(pseudo: "", mdp: "", topButton: 0)
    }
}
