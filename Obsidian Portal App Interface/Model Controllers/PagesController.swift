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
    
    
    // delete pages
    
    // store pages
    var pages: [Page] = []
    
    // MARK: - Campaign
    
    var campaign = Campaign(name: "New Campaign")
    
    func updateCampaign(name: String, description: String) {
        campaign.name = name
        campaign.description = description
    }
 
 }
