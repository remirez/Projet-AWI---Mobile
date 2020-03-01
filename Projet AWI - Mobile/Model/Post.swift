//
//  File.swift
//  Projet AWI - Mobile
//
//  Created by user165586 on 26/02/2020.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import Foundation

struct Id : Codable {
    var id : String
    
    private enum Code : String, CodingKey {
        case id = "$oid"
    }
}

struct Post : Identifiable /*, Codable */{
    /*
    var id : String {   // Pour Identifiable
        get {
            return _id.id
        }
    }
    
    var reactions : [Id]
    var _id: Id
    var texte : String
    var createur : Id
    var commentaires : [Id]
    */
    // For test
    var id : Int
    var texte : String
    var createur : String
    var commentaires : [Post]
    
}
