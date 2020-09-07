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
         
            
            Message(id: 46, title: "7 September 2020", body: "New Space Pirate Rebels Team Comp added/n/nTeam Comps section updated. Only S Tier Comp is now:/n/nStar Guardian Sorcerers")
        ]
    }
}

struct Message: Content {
    let id: Int
    let title: String
    let body: String
}
