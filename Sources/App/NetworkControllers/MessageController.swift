//
//  MessageController.swift
//  App
//
//  Created by James Mclean on 17/04/2020.
//

import Fluent
import Vapor

struct MessageController: RouteCollection {
    func boot(router: Router) throws {
        let messagesRoute = router.grouped("api", "messages")
        messagesRoute.get("all", use: getMessages)
    }
    
    func getMessages(_ req: Request) throws -> [Message] {
        
        return Messages.shared.allMessages
    }
    
}

class Messages {
    static var shared = Messages()
    
    init() {
        
    }
    
    var allMessages: [Message] {
        return [
            Message(id: 7, title: "29 April 2020", body: "Patch 3.11 available on the App Store.\n\nThis patch updates Item images that were incorrect. So please update ASAP. All Item details should now also be correct."),
            
            
            Message(id: 18, title: "8 May 2020", body: "App updated to reflect patch 10.10 changes in game.\n\nTwo New Team Comps have been added - Sorcerer Demolitionist's and a new version of Space Pirate Celestials.\n\nRebel Demolitionist's, Brawler Blasters and Hyperroll Celestials are the top team comps for the moment.\n\nChampion and Item Tier Lists have also been updated."),
            Message(id: 19, title: "19 May 2020", body: "Mech Infiltrators now an S Tier Comp.\n\nDark Stars slightly changed and moves up to A Tier Comp.\n\nCaitlyn goes from D Tier Champ to B Tier Champ."),
            Message(id: 20, title: "21 May 2020", body: "Crashes are down to less than 4 per day with over 2000 active users in the last 30 days. I am pretty happy with this, but if there are having any issues with the app, or repetetive crashes please get in touch through the options menu and contact Developer button.\n\nAlso, I hate to beg, but a quick Star Rating Review (doesn't have to be written) helps the app out so much. Especially for visibility in the App Store. It would be greatly appreciated if you could take the 20 seconds to do so. Options Menu -> Leave Review. Thanks, James :) "),
            Message(id: 21, title: "24 May 2020", body: "Still not much change, in terms of Team Comps. Top Team Comps are still:\n\n - Mech Infiltrator\n\n - Brawler Blasters\n\n - Hyperroll Celestials\n\n - Rebel Demolitionists")
            
        ]
    }
}

struct Message: Content {
    let id: Int
    let title: String
    let body: String
}
