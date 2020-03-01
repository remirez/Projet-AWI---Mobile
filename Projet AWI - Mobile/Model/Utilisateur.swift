//
//  Utilisateur.swift
//  Projet AWI - Mobile
//
//  Created by user165586 on 01/03/2020.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import SwiftUI

class Utilisateur /* : Codable */{
    var pseudo : String!
    var email : String!
    var mdp : String!
    var _id : Id!
    
    init(pseudo: String, email: String, mdp: String, _id: Id) {
        self.pseudo = pseudo
        self.email = email
        self.mdp =  mdp
        self._id = _id
    }
}
