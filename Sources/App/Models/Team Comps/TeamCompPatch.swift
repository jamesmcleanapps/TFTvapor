//
//  TeamCompPatch.swift
//  App
//
//  Created by James Mclean on 02/10/2019.
//

import Foundation
import Vapor

enum TeamCompPatch: String, Comparable, Codable, ReflectionDecodable {
    
    case nineOneFive = "9.15", nineOneFiveB = "9.15b", nineOneSix = "9.16", nineOneSixB = "9.16b", nineOneSeven = "9.17", nineOneNine = "9.19", nineTwoZero = "9.20", nineTwoOne = "9.21"
    
    static func ==(lhs: TeamCompPatch, rhs: TeamCompPatch) -> Bool {
        return lhs.sortOrder == rhs.sortOrder
    }
    
    static func < (lhs: TeamCompPatch, rhs: TeamCompPatch) -> Bool {
        return lhs.sortOrder < rhs.sortOrder
    }
    
    private var sortOrder: Int {
        switch self {
        case .nineOneFive:
            return 1
        case .nineOneFiveB:
            return 2
        case .nineOneSix:
            return 3
        case .nineOneSixB:
            return 4
        case .nineOneSeven:
            return 5
        case .nineOneNine:
            return 6
        case .nineTwoZero:
            return 7
        case .nineTwoOne:
            return 8
        }
    }
    
    static func reflectDecoded() throws -> (TeamCompPatch, TeamCompPatch) {
        return (.nineOneFive, .nineOneFiveB)
    }
    
}
