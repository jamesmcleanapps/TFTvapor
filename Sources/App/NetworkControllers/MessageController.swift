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
         
            
            
            
            Message(id: 26, title: "10 June 2020", body: "REALLY IMPORTANT\n\nPlease make sure this app is updated from the App Store to version 3.20.3\n\nYou can find the version number in the Options Menu, at the bottom of the screen.\n\nIf not there will be crashes as the server is now updated for the Mid Season 10.12 TFT Patch."),
            
            Message(id: 28, title: "11 June 2020", body: "Two new Team Comps\n\nS Tier - Protector Mystics\n\nA Tier - Mech Sorcerers\n\nBattlecast Blasters move from S down to A Tier"),
            
            Message(id: 29, title: "11 June 2020", body: "Champions Tier List Updated\n\nTop Champs now: aurelionSol, ekko, gnar, jinx, lulu, thresh"),
            
            Message(id: 30, title: "11 June 2020", body: "Items Tier List Updated\n\nTop Items now: forceOfNature, giantSlayer, guardianAngel, infinityEdge, morellonomicon, quicksilver, thiefsGloves, zephyr")
            
            
            
            
        ]
    }
}

struct Message: Content {
    let id: Int
    let title: String
    let body: String
}
