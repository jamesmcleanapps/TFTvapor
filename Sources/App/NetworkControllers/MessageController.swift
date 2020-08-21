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
         
            
            
            
            Message(id: 26, title: "10 June 2020", body: "REALLY IMPORTANT\n\nPlease make sure this app is updated from the App Store to at least version 3.20.3\n\nYou can find the version number in the Options Menu, at the bottom of the screen.\n\nIf not there will be crashes as the server is now updated for the Mid Season 10.12 TFT Patch."),
            
            
            Message(id: 44, title: "21 August 2020", body: "Team Comps and Tier Lists have been updated to reflect patch 10.17 changes.\n\nTop Team Comps now:\n\nAstro Snipers\n\nBlademasters\n\nDark Stars\n\nMech Sorcerers\n\nRebel Blademasters\n\nStar Guardian Sorcerers")
        ]
    }
}

struct Message: Content {
    let id: Int
    let title: String
    let body: String
}
