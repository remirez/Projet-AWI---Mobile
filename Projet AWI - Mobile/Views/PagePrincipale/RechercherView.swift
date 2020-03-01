//
//  RechercherView.swift
//  Projet AWI - Mobile
//
//  Created by user165586 on 27/02/2020.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import SwiftUI

struct RechercherView: View {
    var posts :[Post]
    @State var rechercher :  String
    var postToPrint :[Post] {
        get{
            return posts.filter({
                return $0.texte.contains(self.rechercher)
            })
        }
    }
    
    var body: some View {
        VStack {
            NavigationView {
                if (postToPrint.count == 0 ) {
                    VStack{
                        Spacer()
                        Text("Veuillez saisir un mot ou une expression que vous avez lu.")
                            .multilineTextAlignment(.center)
                            .frame(width: 200.0).foregroundColor(Color.gray)
                        Spacer()
                    }.navigationBarTitle("Recherche")
                }else{
                    ListPostView(posts: postToPrint, title: "Recherche")
                }
            }
            TextField("Rechercher", text: $rechercher).padding(.horizontal, 20.0).frame(height: 40)
        }.tabItem{
                VStack{
                    Image(systemName: "magnifyingglass").font(.system(size: 25))
                }
        }
    }
}
/*
struct RechercherView_Previews: PreviewProvider {
    static var previews: some View {
        RechercherView(posts: [], rechercher: "")
    }
}
*/
