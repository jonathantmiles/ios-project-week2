//
//  Campaign.swift
//  Obsidian Portal App Interface
//
//  Created by Jonathan T. Miles on 9/24/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import Foundation

struct Campaign: Codable, Equatable {
    init(id: UUID = UUID(), name: String, description: String = "A new campaign", system: system = .dnd5e) {
        self.id = id
        self.name = name
        self.description = description
        self.system = system.rawValue
    }
    
    let id: UUID
    var name: String
    var description: String
    var system: system.RawValue 
}

enum system: String, Codable {
    case dnd5e, pathfinder, adventureWorld, bladesInTheDark, fiasco
}
