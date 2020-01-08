//
//  ChampionsController.swift
//  App
//
//  Created by James Mclean on 30/09/2019.
//

import Fluent
import Vapor

struct ChampionsController: RouteCollection {
    func boot(router: Router) throws {
        let championsRoute = router.grouped("api", "champions")
        championsRoute.get(String.parameter, use: getChampion)
        championsRoute.get("byrating", String.parameter, use: getChampionsByRating)
        championsRoute.get("details", String.parameter, use: getDetails)
        championsRoute.get("dropRates", use: getChampDropRates)
    }
    
    func getChampion(_ req: Request) throws -> Champion {
        let paramStr = try req.parameters.next(String.self)
        let paramArr = paramStr.components(separatedBy: ",")
        // guard paramArr.count == 2 else { return }
        let set = paramArr.first!
        let champName = paramArr.last!
        let champion: Champion?
        if set == "set1" {
             champion = (Champions.shared.allChampions.filter { $0.name == champName }).first
        } else {
            champion = (ChampionsSet2.shared.allChampions.filter { $0.name == champName }).first
        }
        
        if champion == nil { throw Abort(.badRequest) } else {
            return champion!
        }
    }
    
    func getChampionsByRating(_ req: Request) throws -> [[String]] {
        
        let set = try req.parameters.next(String.self)
        
        
        
        
        var champsToReturn = [[Champion]]()
        
        for (_, championRating) in ChampionRating.allCases.enumerated() {
            var champs = [Champion]()
            if set == "set1" {
                Champions.shared.allChampions.forEach { champion in
                    if champion.rating == championRating {
                        champs.append(champion)
                    }
                }
            } else { // set 2
                ChampionsSet2.shared.allChampions.forEach { champion in
                    if champion.rating == championRating {
                        champs.append(champion)
                    }
                }
            }
            champs.sort { $0.cost < $1.cost }
            champsToReturn.append(champs)
        }
        // map from champions to strings before sending as json
        return champsToReturn.map { $0.map { $0.name }
        }
    }
    
//    func getChampionClassDetails(_ req: Request) throws -> ClassDetails {
//        let classStr = try req.parameters.next(String.self)
//        return ChampionClass.getClassInfo(classStr: classStr)
//    }
    
//    func getChampionOriginDetails(_ req: Request) throws -> OriginDetails {
//        let originStr = try req.parameters.next(String.self)
//        return ChampionOrigin.getOriginInfo(origin: originStr)
//    }
    
    func getChampDropRates(_ req: Request) throws -> DropRates {
        return DropRateData.shared.dropRates
    }
    
    func getDetails(_ req: Request) throws -> Details {
        let paramStr = try req.parameters.next(String.self)
        let paramArr = paramStr.components(separatedBy: ",")
        // guard paramArr.count == 2 else { return }
        let set = paramArr.first!
        let str = paramArr.last!
        
        switch set {
        case "set1":
            if let chmpClass = ChampionClass.getClassInfo(classStr: str) {
                return chmpClass
            }
            if let chmpOrigin = ChampionOrigin.getOriginInfo(origin: str) {
                return chmpOrigin
            }
        case "set2":
            if let chmpClass = ChampionClassSet2.getClassInfo(classStr: str) {
                return chmpClass
            }
            if let chmpElement = ChampionElementSet2.getElementInfo(element: str) {
                return chmpElement
            }
        default:
            print("Error, no set found")
            throw ChampError.noDetailsFound
            
        }
        return Details(main: "", benefit1: "", benefit2: "", benefit3: "")
    }
    
    
}


enum ChampError: Error {
    case noDetailsFound
}
