//
//  Page.swift
//  Obsidian Portal App Interface
//
//  Created by Jonathan T. Miles on 9/26/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import Foundation

struct Page: Codable, Equatable {
    
    init(id: UUID = UUID(), /* campaign: Campaign, */ name: String, shortDescription: String? = nil, body: String, pageType: pageType = .page /*, associatedPlayers: [User]? */) {
        self.id = id
        //self.campaign = campaign
        self.name = name
        let shortBody = Array(body.split(separator: ".")).first ?? ""
        self.shortDescription = shortDescription ?? String(shortBody)
        self.body = body
        self.pageType = pageType.rawValue
        // self.associatedPlayers = associatedPlayers
    }
    
    let id: UUID
    // let campaign: Campaign // or campaign.id
    let name: String
    let shortDescription: String
    let body: String
    /// can include normal pages, along with character, item, log pages
    // let relatedPages: [Page] // or UUID array // only implement if the UI exists for it
    let pageType: pageType.RawValue // enum or enum.rawValue
    // let associatedPlayers: [User]? // for character or item pages stretch: implement a UIPicker view
}

enum pageType: String, Codable {
    case page, character, item, log, main
}
