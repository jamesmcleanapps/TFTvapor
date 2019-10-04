//
//  TeamCompPositions.swift
//  App
//
//  Created by James Mclean on 02/10/2019.
//

import Foundation
import Vapor
import FluentMySQL

struct TeamCompPositions: Codable {
    
    var id: Int?
    var positions: [Champion?] = []
    
    init(champsPositions: [Int : Champion]) {
        for i in 0..<21 {
            positions.append(champsPositions[i + 1])
        }
    }
}

extension TeamCompPositions: MySQLModel {}
extension TeamCompPositions: Content {}
extension TeamCompPositions: Migration{}
extension TeamCompPositions: Parameter{}
