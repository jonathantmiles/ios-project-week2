//
//  PagesController.swift
//  Obsidian Portal App Interface
//
//  Created by Jonathan T. Miles on 9/25/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import Foundation

class PagesController {
    
    // MARK: - Pages
    
    // create new page
    func createPage(withName name: String, body: String) {
        let page = Page(name: name, body: body)
        pages.append(page)
    }
    
    // update existing pages
    func update(page: Page, withName name: String, shortDescription: String, body: String, pageType: pageType) {
        var scratch = page
        scratch.name = name
        scratch.shortDescription = shortDescription
        scratch.body = body
        scratch.pageType = pageType.rawValue
        guard let index = pages.firstIndex(of: page) else { return }
        pages.remove(at: index)
        pages.insert(scratch, at: index)
    }
    
    // delete pages
    func delete(page: Page) {
        guard let index = pages.firstIndex(of: page) else { return }
        pages.remove(at: index)
    }
    
    // store pages
    var pages: [Page] = []
    
    // MARK: - Campaign
    
    var campaign = Campaign(name: "New Campaign")
    
    func updateCampaign(name: String, description: String) {
        campaign.name = name
        campaign.description = description
    }
    
    // MARK: - Users
    
    var defaultUser = User(name: "NewUser")
    
    func updateUser(name: String, bio: String) {
        defaultUser.name = name
        defaultUser.bio = bio
    }
 
 }
