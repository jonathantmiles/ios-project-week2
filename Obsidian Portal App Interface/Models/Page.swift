//
//  Page.swift
//  Obsidian Portal App Interface
//
//  Created by Jonathan T. Miles on 9/26/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import Foundation

struct Page: Codable, Equatable {
    
    init(id: UUID = UUID(), name: String, shortDescription: String? = nil, body: String, pageType: pageType = .page) {
        self.id = id
        self.name = name
        let shortBody = Array(body.split(separator: ".")).first ?? ""
        self.shortDescription = shortDescription ?? String(shortBody)
        self.body = body
        self.pageType = pageType.rawValue
    }
    
    let id: UUID
    var name: String
    var shortDescription: String
    var body: String
    var pageType: pageType.RawValue
}

enum pageType: String, Codable {
    case page, character, item, log, main
}
