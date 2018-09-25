//
//  OAuth Helper.swift
//  Obsidian Portal App Interface
//
//  Created by Jonathan T. Miles on 9/25/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import Foundation
import OAuthSwift

let oauthswift = OAuth1Swift(
    consumerKey:    "********",
    consumerSecret: "********",
    requestTokenUrl: "https://www.obsidianportal.com/oauth/request_token",
    authorizeUrl:    "https://www.obsidianportal.com/oauth/authorize",
    accessTokenUrl:  "https://www.obsidianportal.com/oauth/access_token"
)


class OAuthHelper {
    // create an instance and retain it
    
    // oauthswift.authorizeURLHandler
    // authorize
    let handle = oauthswift.authorize(
        withCallbackURL: URL(string: "oauth-swift://oauth-callback/obsidianportal")!,
        success: { credential, response, parameters in
            print(credential.oauthToken)
            print(credential.oauthTokenSecret)
            print(parameters["user_id"]!)
            // Do your request
    },
        failure: { error in
            print(error.localizedDescription)
    }
    )
}
