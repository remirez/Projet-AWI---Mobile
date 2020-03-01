//
//  AcceuilView.swift
//  Projet AWI - Mobile
//
//  Created by user165586 on 01/03/2020.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import SwiftUI

struct AcceuilView: View {
    var posts : [Post]
    
    var body: some View {
         NavigationView{
            ListPostView(posts: posts, title: "Our App")
         }.tabItem{
             VStack{
                 Image(systemName: "house")
             }
        }
    }
}

/*
struct AcceuilView_Previews: PreviewProvider {
    static var previews: some View {
        AcceuilView()
    }
}
*/
