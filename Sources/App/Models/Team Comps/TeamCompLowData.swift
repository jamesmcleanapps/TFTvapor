//
//  TeamCompLowData.swift
//  App
//
//  Created by James Mclean on 03/10/2019.
//

import Foundation
import Fluent
import Vapor
import FluentMySQL

struct TeamCompLowData: Equatable, Codable {
    var id: Int?
    var name: String
    var tier: TeamCompTier
    var patch: TeamCompPatch?
    var unitNamesCost: [String : Int]
    var carryItems: [String : [String]]
    
    var synergiesStr: String
}


extension TeamCompLowData: MySQLModel {}
extension TeamCompLowData: Content {}
extension TeamCompLowData: Migration{}
extension TeamCompLowData: Parameter{}
