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
         
            
            Message(id: 20, title: "21 May 2020", body: "Crashes are down to less than 4 per day with over 2000 active users in the last 30 days. I am pretty happy with this, but if there are having any issues with the app, or repetetive crashes please get in touch through the options menu and contact Developer button.\n\nAlso, I hate to beg, but a quick Star Rating Review (doesn't have to be written) helps the app out so much. Especially for visibility in the App Store. It would be greatly appreciated if you could take the 20 seconds to do so. Options Menu -> Leave Review. Thanks, James :) "),
            
            
            Message(id: 22, title: "28 May 2020", body: "App updated to reflect Patch 10.11 changes in game."),
            
            Message(id: 23, title: "28 May 2020", body: "Team Comps have been updated for patch 10.11. Top Team Comps for now are:\n\n - Brawler Blasters\n\n - Mech Infiltrators\n\n - Rebel Demolitionists\n\n - Void Brawler"),
            
            Message(id: 24, title: "4 June 2020", body: "Not much change in the last few days. I have moved Hyper Roll Celestials from A down to B Tier, and moved Hyper Roll Sorcerers from B up to A Tier"),
            
            Message(id: 25, title: "4 June 2020", body: "If anyone is playing patch 10.12 on the Beta Servers. I am looking for screenshots of the new champions images, as they appear in the shop.\n\nIf anyone is interested they can email the screenshots to me at: jamesmcleanapps@gmail.com. Or they can send them in the Contact Developer section in the options menu of this app. Thanks, James.")
            
        ]
    }
}

struct Message: Content {
    let id: Int
    let title: String
    let body: String
}
