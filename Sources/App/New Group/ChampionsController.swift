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
        championsRoute.get("byrating", use: getChampionsByRating)
        championsRoute.get("class", String.parameter, use: getChampionClassDetails)
        championsRoute.get("origin", String.parameter, use: getChampionOriginDetails)
        championsRoute.get("dropRates", use: getChampDropRates)
    }
    
    func getChampion(_ req: Request) throws -> Champion {
        let champName = try req.parameters.next(String.self)
        let champion = (Champions.shared.allChampions.filter { $0.name == champName }).first
        if champion == nil { throw Abort(.badRequest) } else {
            return (Champions.shared.allChampions.filter { $0.name == champName }).first!
        }
    }
    
    func getChampionsByRating(_ req: Request) throws -> [[String]] {
        var champsToReturn = [[Champion]]()
        for (_, championRating) in ChampionRating.allCases.enumerated() {
            var champs = [Champion]()
            Champions.shared.allChampions.forEach { champion in
                if champion.rating == championRating {
                    champs.append(champion)
                }
            }
            champs.sort { $0.cost < $1.cost }
            champsToReturn.append(champs)
        }
        // map from champions to strings before sending as json
        return champsToReturn.map { $0.map { $0.name }
        }
    }
    
    func getChampionClassDetails(_ req: Request) throws -> ClassDetails {
        let classStr = try req.parameters.next(String.self)
        return ChampionClass.getClassInfo(classStr: classStr)
    }
    
    func getChampionOriginDetails(_ req: Request) throws -> OriginDetails {
        let originStr = try req.parameters.next(String.self)
        return ChampionOrigin.getOriginInfo(origin: originStr)
    }
    
    func getChampDropRates(_ req: Request) throws -> DropRates {
        return DropRateData.shared.dropRates
    }
    
    
}
