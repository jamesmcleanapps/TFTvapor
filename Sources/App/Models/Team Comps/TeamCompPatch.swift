//
//  TeamCompPatch.swift
//  App
//
//  Created by James Mclean on 02/10/2019.
//

import Foundation
import Vapor

enum TeamCompPatch: String, Comparable, Codable, ReflectionDecodable {
    
    case nineOneFive = "9.15", nineOneFiveB = "9.15b", nineOneSix = "9.16", nineOneSixB = "9.16b", nineOneSeven = "9.17", nineOneNine = "9.19", nineTwoZero = "9.20", nineTwoOne = "9.21", nineTwoTwo = "9.22", nineTwoThree = "9.23", nineTwoFour = "9.24", nineTwoFive = "9.25", tenOneZero = "10.1", tenOneZeroB = "10.1b", tenOneOne = "10.11", tenOneOneB = "10.11b", tenOneTwo = "10.12", tenOneTwoB = "10.12b", tenTwo = "10.2", tenThree = "10.3",
    tenFour = "10.4", tenFive = "10.5", tenSix = "10.6", tenSeven = "10.7"
    
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
        case .nineTwoTwo:
            return 9
        case .nineTwoThree:
            return 10
        case .nineTwoFour:
            return 11
        case .nineTwoFive:
            return 12
        case .tenOneZero:
            return 13
        case .tenOneZeroB:
            return 14
        case .tenOneOne:
            return 15
        case .tenOneOneB:
            return 16
        case .tenOneTwo:
            return 17
        case .tenOneTwoB:
            return 18
        case .tenTwo:
            return 19
        case .tenThree:
            return 20
        case .tenFour:
            return 21
        case .tenFive:
            return 22
        case .tenSix:
            return 23
        case .tenSeven:
            return 24
            
        }
    }
    
    static func reflectDecoded() throws -> (TeamCompPatch, TeamCompPatch) {
        return (.nineOneFive, .nineOneFiveB)
    }
    
}
