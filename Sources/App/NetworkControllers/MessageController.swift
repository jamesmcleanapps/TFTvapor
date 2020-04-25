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
            Message(id: 1, title: "Important", body: "Messages like this may appear on app startup. They will contain information on new builds on the app store, changes to team comps and tiers etc."),
            Message(id: 2, title: "Three Star Champs", body: "Team Comps will now contain advice on which champions to try and 3 Star")
            
        ]
    }
}

struct Message: Content {
    let id: Int
    let title: String
    let body: String
}
