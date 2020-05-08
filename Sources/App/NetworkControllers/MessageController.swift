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
            
            Message(id: 15, title: "8 May 2020", body: "New S Tier Team Comp - Void Brawler\n\n - Chrono Blademaster down to A Tier\n\n - Cybernetic Blademasters down to A Tier\n\n - Space Pirate Celestials down to A Tier"),
            
            Message(id: 16, title: "8 May 2020", body: " - Sona up to A Tier\n\n - Ahri and Xayah up to B Tier"),
            
            Message(id: 17, title: "8 May 2020", body: "Chalice of Favor now an A Tier Item")
            
        ]
    }
}

struct Message: Content {
    let id: Int
    let title: String
    let body: String
}
