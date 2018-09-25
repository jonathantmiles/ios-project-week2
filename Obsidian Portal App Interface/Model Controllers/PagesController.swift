//
//  PagesController.swift
//  Obsidian Portal App Interface
//
//  Created by Jonathan T. Miles on 9/25/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import Foundation

class PagesController {
    
    // OAuth
    
    //... methods to ensure the OAuth works
    
    // fetch entries from server
    
    // fetch list
    /*
    Index (List)
    
    URL: http://api.obsidianportal.com/v1/campaigns/campaign_id/wikis.format
    HTTP Verb: GET
    Requires Authentication: Yes
    Required Parameters:
    
    campaign_id - identifier - The ID of the campaign to retrieve a wiki page list from.
    Optional Parameters: None
    Response Code: 200
    Response Body: A list of wiki pages for a campaign.
    
    Notes
    1) Missing fields
    For bandwidth conservation, the data returned does not include the the body, body_html, game_master_info, game_master_info_html fields. If you need the full text, you'll have to request the pages individually.
    
    2) Visibility breakdown
    The list of pages returned depends on the visibility of the campaign and the identity of the logged in user. It breaks down as follows:
    
    public campaign, non-GM - All non gm-only pages
    public campaign, GM - All pages
    private campaign, non-player, non-GM - HTTP 403
    private campaign, player - All non gm-only pages
    private campaign, GM - All pages
 */
    
    // fetch single entry
    /*
    Show
    
    URL: http://api.obsidianportal.com/v1/campaigns/campaign_id/wikis/id.format
    HTTP Verb: GET
    Requires Authentication: Yes
    Required Parameters:
    
    campaign_id - identifier - The ID of the campaign to retrieve a wiki page list from.
    id - identifier - The ID of the wiki page to retrieve. You can also use the wiki page slug (see use_slug below)
    Optional Parameters:
    
    use_slug - boolean - When set to 'true', or '1', the wiki page will be looked up by slug instead of id. Note: The campaign_id must be an identifier, not a slug.
    Response Code: 200
    Response Body: A single wiki page for a campaign.
    
    Example
    Request
    
    http://api.obsidianportal.com/v1/campaigns/5b6ef1e0f24411dfba8140403656340d/wikis/c06993fcf24411dfba8140403656340d.json
    */
    
    // Create
    
    // Update
    
    // Delete
 
 }
