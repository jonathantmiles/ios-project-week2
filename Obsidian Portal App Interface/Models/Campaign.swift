//
//  Campaign.swift
//  Obsidian Portal App Interface
//
//  Created by Jonathan T. Miles on 9/24/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import Foundation

struct Campaign: Codable, Equatable {
    init(id: UUID = UUID(), name: String, gameMasters: [User] = [], players: [User] = [], description: String = "A new campaign", system: system = .dnd5e, pages: [Page] = []) {
        self.id = id
        self.name = name
        self.gameMasters = gameMasters
        self.players = players
        self.description = description
        self.system = system.rawValue
        self.pages = pages
    }
    
    let id: UUID
    var name: String
    var gameMasters: [User] // array of user UUIDs?
    var players: [User] // as above
    var description: String
    var system: system.RawValue // or possibly enum / enum.rawValue
    var pages: [Page] // or array of page UUIDs?
}

enum system: String, Codable {
    case dnd5e, pathfinder, adventureWorld, bladesInTheDark, fiasco
}
