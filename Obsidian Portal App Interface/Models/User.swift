//
//  User.swift
//  Obsidian Portal App Interface
//
//  Created by Jonathan T. Miles on 9/24/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import Foundation

struct User {
    let id: UUID // - A unique identifier for the given user. This will never change.
    let username: String // - The user's username. Note: The user can change this value.
    // let avatar_image_url: String // - The URL of the user's avatar image.
    let campaigns: [Campaign] // array of campaign UUIDs? // - campaign mini-object An array of the user's campaigns
    let bio: String // self-description
}
