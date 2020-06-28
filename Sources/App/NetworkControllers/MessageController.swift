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
            
            
            
            Message(id: 35, title: "25 June 2020", body: "App has been updated to reflect patch 10.13 changes.\n\nAll Team Comps have also been updated. Top Comps just now are:\n\n - Brawler Blasters\n\n - Cybernetic Blademasters\n\n - Vanguard Mystics"),
            
            Message(id: 36, title: "25 June 2020", body: "I am aware that a few of the images are incorrect, for example, Blue Buff still uses the old Seraphs Embrace image. Images for this app are stored on your device, so i need to update the client through Apple, which is a longer process that simply updating the server.\n\nI will have everything update soon, apologies for the delay.\n\nJames"),
            
            Message(id: 37, title: "28 June 2020", body: "Many Team Comps have been updated and a few new Team Comps have been added. Including Cybernetics, Battlecast and Mech Rebels\n\nTop Team Comps are currently:\n\n - Brawler Blasters\n\n - Cybernetics\n\n - Sorcerers\n\nChampion and Items Tier Lists have also been updated.")
            
            
            
        ]
    }
}

struct Message: Content {
    let id: Int
    let title: String
    let body: String
}
