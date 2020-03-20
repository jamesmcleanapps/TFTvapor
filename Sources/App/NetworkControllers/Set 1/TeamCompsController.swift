//
//  TeamCompsController.swift
//  App
//
//  Created by James Mclean on 02/10/2019.
//
import Fluent
import Vapor

struct TeamCompsController: RouteCollection {
    func boot(router: Router) throws {
        let teamCompsRoute = router.grouped("api", "teamComps")
        teamCompsRoute.get(use: getAllTeamComps )
        teamCompsRoute.get("lowData", "set", String.parameter, use: getAllTeamCompsLowData)
        teamCompsRoute.get("names", use: getAllTeamCompsNames)
        teamCompsRoute.get(String.parameter ,String.parameter, use: getTeamCompWithName)
        teamCompsRoute.get("lowData", String.parameter, use: getTeamCompWithNameLowData)
    }
    
    func getAllTeamComps(_ req: Request) throws -> [TeamComp] {
        return TeamComps.shared.allTeamComps
    }
    
    func getAllTeamCompsLowData(_ req: Request) throws -> [TeamCompLowData] {
        let set = try req.parameters.next(String.self)
        if set == "set1" {
            return TeamComps.shared.allTeamComps.map { $0.toLowData() }
        } else if set == "set2" {
            return TeamCompsSet2.shared.allTeamComps.map { $0.toLowData() }
        } else { // set 3
            return TeamCompsSet3.shared.allTeamComps.map { $0.toLowData() }
        }
    }
    
    func getAllTeamCompsNames(_ req: Request) throws -> [String] {
        // sort by newest patch first, then by tier S -> C
        let teamComps = TeamComps.shared.allTeamComps.sorted { (team1, team2) -> Bool in
            if team1.patch == team2.patch { return team1.tier < team2.tier } else {
                return team1.patch > team2.patch
            }
        }
        return teamComps.map { $0.name }
    }
    
    func getTeamCompWithName(_ req: Request) throws -> TeamComp {
        let set = try req.parameters.next(String.self)
        let teamCompName = try req.parameters.next(String.self)
        
        if set == "set1" {
            let teamComp = TeamComps.shared.allTeamComps.filter { $0.name == teamCompName }.first
            if teamComp == nil {
                throw Abort(.badRequest)
            } else {
                return teamComp!
            }
        } else if set == "set2" {
            let teamComp = TeamCompsSet2.shared.allTeamComps.filter { $0.name == teamCompName }.first
            if teamComp == nil {
                throw Abort(.badRequest)
            } else {
                return teamComp!
            }
        } else { //set 3
            let teamComp = TeamCompsSet3.shared.allTeamComps.filter { $0.name == teamCompName }.first
            if teamComp == nil {
                throw Abort(.badRequest)
            } else {
                return teamComp!
            }
        }
        
        
    }
    
    func getTeamCompWithNameLowData(_ req: Request) throws -> TeamCompLowData {
        let teamCompName = try req.parameters.next(String.self)
        let teamComp = TeamComps.shared.allTeamComps.filter { $0.name == teamCompName }.first
        if teamComp == nil {
            throw Abort(.badRequest)
        } else {
            return teamComp!.toLowData()
        }
    }
    
    
    
    
}
