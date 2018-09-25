//
//  User.swift
//  Obsidian Portal App Interface
//
//  Created by Jonathan T. Miles on 9/24/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import Foundation

struct User {
    let id: String // UUID? // - A unique identifier for the given user. This will never change.
    let username: String // - The user's username. Note: The user can change this value.
    let avatar_image_url: String // - The URL of the user's avatar image.
    let profile_url: String // - The URL of the user's profile on Obsidian Portal.
    let campaigns: [Campaign] // - campaign mini-object An array of the user's campaigns
    let is_ascendant: Bool // - Indicates if the user is an Ascendant member.
    let last_seen_at: Date // - The last time the user was active on the website. ISO-8601 timestamp.
    let utc_offset: String // - Formatted string representing the user's time zone. It is formatted as "+HH:MM" and represents the offset from UTC. Example: "-05:00" is Eastern US time.
    let locale: String // - ISO 639-1 language code for the user's preferred language.
    let created_at: Date // - Indicates when the user first created their account. ISO-8601 timestamp.
    let updated_at: Date // - Indicates when the user last updated their account. ISO-8601 timestamp.
}
