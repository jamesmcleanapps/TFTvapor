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
            Message(id: 8, title: "29 April 2020", body: "All stats updated for patch 10.9"),
            Message(id: 13, title: "4 May 2020", body: "Two new S Tier Team Comps\n\n - Hyper-roll Sorcerers\n\n - Hyper-roll Celestials"),
            Message(id: 14, title: "4 May 2020", body: "Poppy up to A Tier\n\nTwisted Fate up to B Tier\n\nXayah up to C Tier")
            
        ]
    }
}

struct Message: Content {
    let id: Int
    let title: String
    let body: String
}
