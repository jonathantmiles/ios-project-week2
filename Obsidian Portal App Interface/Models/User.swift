//
//  User.swift
//  Obsidian Portal App Interface
//
//  Created by Jonathan T. Miles on 9/24/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import Foundation

struct User: Codable, Equatable {
    init(id: UUID = UUID(), name: String, bio: String = "") {
        self.id = id
        self.name = name
        self.bio = bio
    }
    
    let id: UUID
    var name: String
    var bio: String
}
