//
//  CampaignController.swift
//  Obsidian Portal App Interface
//
//  Created by Jonathan T. Miles on 9/26/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import Foundation

class CampaignController {
    
    // create and hold a new campaign if none exisits?
    // should there be a default campaign property?
    // should pages be created here and e.g. appended to the campaign's [pages] property
    
    // Create
    func createCampaign(withTitle name: String) {
        let campaign = Campaign(name: name)
        campaigns.append(campaign)
        currentCampaign = campaign
    }
    
    func changeCampaign(to campaign: Campaign) {
        currentCampaign = campaign
    }
    
    // Update
    func updateCampaign(name: String, gameMasters: [User], players: [User], description: String, system: system) {
        currentCampaign?.name = name
        currentCampaign?.gameMasters = gameMasters
        currentCampaign?.players = players
        currentCampaign?.description = description
        currentCampaign?.system = system.rawValue
    }
    
    func addGM(gameMaster: User) {
        
    }
    
    // add player
    
    // add page (Create + append to campaign.pages
    // update page (located at index of page in campaign.pages
    // delete page 
    
    // Read
    var campaigns: [Campaign] = []
    var currentCampaign: Campaign?
    
    
}
