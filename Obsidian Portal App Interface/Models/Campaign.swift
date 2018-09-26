//
//  Campaign.swift
//  Obsidian Portal App Interface
//
//  Created by Jonathan T. Miles on 9/24/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import Foundation

struct Campaign: Codable {
    let id: UUID
    let name: String
    let gameMaster: [User] // array of user UUIDs?
    let players: [User] // as above
    let description: String
    let gameSystem: String // or possibly enum / enum.rawValue
    let pages: [Page] // or array of page UUIDs?
}
