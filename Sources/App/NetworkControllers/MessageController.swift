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
            Message(id: 5, title: "28 April 2020", body: "Fixed Crash caused by tapping info button on mana reaver class."),
            Message(id: 6, title: "28 April 2020", body: "Apologies for the state of the items. All item details should now hopefully be correct.\n\nAlso, all out of date images will be fixed in patch 3.11, submitted today. Should be with you tomorrow at the latest after Apple review."),
            Message(id: 7, title: "29 April 2020", body: "Patch 3.11 available on the App Store.\n\nThis patch updates Item images that were incorrect. So please update ASAP.")
            
        ]
    }
}

struct Message: Content {
    let id: Int
    let title: String
    let body: String
}
