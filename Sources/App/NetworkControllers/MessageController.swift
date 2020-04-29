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
            Message(id: 9, title: "29 April 2020", body: "All Team Comps have been updated for patch 10.9. There will be changes over the coming days as the meta shifts.")
            
        ]
    }
}

struct Message: Content {
    let id: Int
    let title: String
    let body: String
}
