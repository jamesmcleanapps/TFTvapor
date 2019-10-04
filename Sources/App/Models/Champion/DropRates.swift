//
//  DropRates.swift
//  App
//
//  Created by James Mclean on 03/10/2019.
//

import Foundation
import Vapor
import FluentMySQL


struct DropRates: Codable {
    var id: Int?
    var name: String
    
    var tier1: [Float?]
    var tier2: [Float?]
    var tier3: [Float?]
    var tier4: [Float?]
    var tier5: [Float?]
}

extension DropRates: MySQLModel {}
extension DropRates: Content {}
extension DropRates: Migration{}
extension DropRates: Parameter{}
