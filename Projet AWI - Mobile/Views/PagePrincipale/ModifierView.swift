//
//  ModifierView.swift
//  Projet AWI - Mobile
//
//  Created by user165586 on 01/03/2020.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import SwiftUI

struct ModifierView: View {
    @EnvironmentObject var appState : AppState
    @State var email : String
    @State var pseudo : String
    @State var mdp : String
    @State var amdp : String
    @State var cmdp : String
    
    var body: some View {
        VStack{
        VStack{
            VStack(alignment: .leading, spacing: 10.0){
                Text("Pseudo")
                    .font(.title)
                    .fontWeight(.medium)
                TextField("Entrer votre pseudo", text: self.$pseudo)
                    .frame(height: 40.0)
                
            }.padding(.bottom)
            
            VStack(alignment: .leading, spacing: 10){
                Text("E-mail")
                .font(.title)
                .fontWeight(.medium)
                TextField("Entrer votre e-mail", text: self.$email)
                    .frame(height: 40.0)
            }
            VStack(alignment: .leading, spacing: 10){
                Text("Ancien mot de passe")
                .font(.title)
                .fontWeight(.medium)
                SecureField("Entrer votre mot de passe", text: self.$amdp)
                    .frame(height: 40.0)
            }
            VStack(alignment: .leading, spacing: 10){
                Text("Nouveau mot de passe")
                .font(.title)
                .fontWeight(.medium)
                SecureField("Entrer votre mot de passe", text: self.$mdp)
                    .frame(height: 40.0)
            }
            VStack(alignment: .leading, spacing: 10){
                Text("Retaper votre mot de passe")
                .font(.title)
                .fontWeight(.medium)
                SecureField("Entrer votre mot de passe", text: self.$cmdp )
                    .frame(height: 40.0)
            }
        }.padding(.bottom, 10)
        Button(action: {
            print(self.amdp == self.appState.utilisateur.mdp && self.mdp == self.cmdp)
            print(self.amdp, self.mdp, self.cmdp)
            if(self.amdp == self.appState.utilisateur.mdp && self.mdp == self.cmdp){
                self.appState.utilisateur.pseudo = self.pseudo
                self.appState.utilisateur.mdp = self.mdp
                self.appState.utilisateur.email = self.email
                
                
                self.appState.modifierUtilisateur.toggle()
            }
        }){ Text("Confirmer").foregroundColor(Color.white).padding(15.0).frame(width: 150.0, height: 40.0).background(Color.red).cornerRadius(20)
        }
    }
    }

}

