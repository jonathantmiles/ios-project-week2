//
//  Campaign.swift
//  Obsidian Portal App Interface
//
//  Created by Jonathan T. Miles on 9/24/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import Foundation

struct Campaign {
    let id: String
    let name: String
    let slug: String
    let campaign_url: String // perhaps convert to snake case?
    let visibility: String
    let game_master: [User]
    // ...
}
