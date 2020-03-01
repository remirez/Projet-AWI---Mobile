//
//  RegisterView.swift
//  Projet AWI - Mobile
//
//  Created by user165586 on 25/02/2020.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import SwiftUI

struct InscriptionView: View {
    @State var pseudo: String
    @State var mdp: String
    @State var email: String
    @State var cmdp: String
    var topButton: CGFloat
    
    var body: some View {
        VStack{
            LogoView(bottom: 30)
            VStack{
                VStack(alignment: .leading, spacing: 10.0){
                    Text("Pseudo")
                        .font(.title)
                        .fontWeight(.medium)
                    TextField("Entrer votre pseudo", text: $pseudo)
                        .frame(height: 40.0)
                    
                }.padding(.bottom)
                
                VStack(alignment: .leading, spacing: 10){
                    Text("E-mail")
                    .font(.title)
                    .fontWeight(.medium)
                    TextField("Entrer votre e-mail", text: $email)
                        .frame(height: 40.0)
                }
                VStack(alignment: .leading, spacing: 10){
                    Text("Mot de passe")
                    .font(.title)
                    .fontWeight(.medium)
                    SecureField("Entrer votre mot de passe", text: $mdp)
                        .frame(height: 40.0)
                }
                VStack(alignment: .leading, spacing: 10){
                    Text("Retaper votre mot de passe")
                    .font(.title)
                    .fontWeight(.medium)
                    SecureField("Entrer votre mot de passe", text:$cmdp )
                        .frame(height: 40.0)
                }
            }.padding(.bottom, topButton)
            
                Button(action: {
                    print("Pseudo : \(self.pseudo) et MDP : \(self.mdp)")
                    
                    // A completer avec la logique de notre App
                    
                }) {
                    Text("S'incrire").foregroundColor(Color.white)
                }
                .padding(40.0)
                .frame(height: 50.0).background(Color.green).cornerRadius(20)
            
            Spacer()
        }
        .padding(.horizontal, 20.0)
        
    }
}

