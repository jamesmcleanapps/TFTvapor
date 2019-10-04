//
//  TeamCompTier.swift
//  App
//
//  Created by James Mclean on 02/10/2019.
//

import Foundation
import Vapor

enum TeamCompTier: String, Comparable, Codable, ReflectionDecodable {
    
    case S = "S", A, B, C, D
    
    private var sortOrder: Int {
        switch  self {
        case .S:
            return 0
        case .A:
            return 1
        case .B:
            return 2
        case .C:
            return 3
        case .D:
            return 4
        }
    }
    
    static func ==(lhs: TeamCompTier, rhs: TeamCompTier) -> Bool {
        return lhs.sortOrder == rhs.sortOrder
    }
    
    static func < (lhs: TeamCompTier, rhs: TeamCompTier) -> Bool {
        return lhs.sortOrder < rhs.sortOrder
    }
    
    static func reflectDecoded() throws -> (TeamCompTier, TeamCompTier) {
        return(.S, .A)
    }
}
