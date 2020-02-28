//
//  ProfileView.swift
//  Projet AWI - Mobile
//
//  Created by user165586 on 27/02/2020.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            HStack{
                Text("Profile")
                    .font(.title)
                    .fontWeight(.medium)
                .multilineTextAlignment(.center)
                Spacer()
            }
            Spacer()
        }.padding(.horizontal, 20).background(Color.green)
            .tabItem{
                VStack{
                    Image(systemName: "person.crop.circle")
                   Text("Profile")
                }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
