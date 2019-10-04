//
//  Ultimate and Stats.swift
//  App
//
//  Created by James Mclean on 30/09/2019.
//

import Foundation
import Vapor
import FluentMySQL

struct Ultimate: Codable {
    var id: Int?
    var name: String
    var description: String
}

struct Stats: Codable {
    var id: Int?
    var health: Int
    var armor: Int
    var magicResist: Int
    var attackDamage: Int
    var attackSpeed: Float
    var attackRange: Int
    
    func dps() -> Int {
        return Int(attackSpeed * Float(attackDamage))
    }
}

extension Ultimate: MySQLModel {}
extension Ultimate: Content {}
extension Ultimate: Migration{}
extension Ultimate: Parameter{}

extension Stats: MySQLModel {}
extension Stats: Content {}
extension Stats: Migration{}
extension Stats: Parameter{}
