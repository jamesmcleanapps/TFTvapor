//
//  TeamCompTests.swift
//  App
//
//  Created by James Mclean on 06/10/2019.
//

import Foundation
@testable import App
import XCTest

final class TeamCompTests: XCTestCase {
    
    // tests that a team comps carries and the champions in the carry items are the same
    func testCarriesAndCarryItemsMatch() throws {
        TeamComps.shared.allTeamComps.forEach { (teamComp) in
            let carries = teamComp.carries.map { $0.name }.sorted()
            let carriesInCarryItems = teamComp.carryItems!.keys.map { $0.name }.sorted()
            
            if carries != carriesInCarryItems {
                print("TCT: \(teamComp.name) has an error")
                print("TCT: carries: \(carries)")
                print("TCT: carriesInItems: \(carriesInCarryItems)")
                XCTFail()
            }
        }
        XCTAssert(true)
    }
    
    func testCarriesAndCarryItemsMatchSet2() throws {
        TeamCompsSet2.shared.allTeamComps.forEach { (teamComp) in
            let carries = teamComp.carries.map { $0.name }.sorted()
            let carriesInCarryItems = teamComp.carryItems!.keys.map { $0.name }.sorted()
            
            if carries != carriesInCarryItems {
                print("TCT: \(teamComp.name) has an error")
                print("TCT: carries: \(carries)")
                print("TCT: carriesInItems: \(carriesInCarryItems)")
                XCTFail()
            }
        }
        XCTAssert(true)
    }
    
    func testCarriesAndCarryItemsMatchSet3() throws {
        TeamCompsSet3.shared.allTeamComps.forEach { (teamComp) in
            let carries = teamComp.carries.map { $0.name }.sorted()
            let carriesInCarryItems = teamComp.carryItems!.keys.map { $0.name }.sorted()
            
            if carries != carriesInCarryItems {
                print("TCT: \(teamComp.name) has an error")
                print("TCT: carries: \(carries)")
                print("TCT: carriesInItems: \(carriesInCarryItems)")
                XCTFail()
            }
        }
        XCTAssert(true)
    }
    
    // tests that all champs in final comp are in the positions map
    func testAllChampsAreInPositions() throws {
        TeamComps.shared.allTeamComps.forEach { (teamComp) in
            if let teamPositions = teamComp.teamCompPositions {
                let units = teamComp.units.map { $0.name }.sorted()
                let unitsWithPositions = teamPositions.positions.compactMap { $0 }.map { $0.name }.sorted()
                
                if units != unitsWithPositions {
                    print("TCT: \(teamComp.name)  has a problem.")
                    print("TCT: \(units)")
                    print("TCT: does not equal")
                    print("TCT: \(unitsWithPositions)")
                    
                    XCTAssert(false)
                }
                
            }
        }
        XCTAssert(true)
    }
    
    func testAllChampsAreInPositionsSet2() throws {
        TeamCompsSet2.shared.allTeamComps.forEach { (teamComp) in
            if let teamPositions = teamComp.teamCompPositions {
                let units = teamComp.units.map { $0.name }.sorted()
                let unitsWithPositions = teamPositions.positions.compactMap { $0 }.map { $0.name }.sorted()
                
                if units != unitsWithPositions {
                    print("TCT: \(teamComp.name)  has a problem.")
                    print("TCT: \(units)")
                    print("TCT: does not equal")
                    print("TCT: \(unitsWithPositions)")
                    
                    XCTAssert(false)
                }
                
            }
        }
        XCTAssert(true)
    }
    
    func testAllChampsAreInPositionsSet3() throws {
           TeamCompsSet3.shared.allTeamComps.forEach { (teamComp) in
               if let teamPositions = teamComp.teamCompPositions {
                   let units = teamComp.units.map { $0.name }.sorted()
                   let unitsWithPositions = teamPositions.positions.compactMap { $0 }.map { $0.name }.sorted()
                   
                   if units != unitsWithPositions {
                       print("TCT: \(teamComp.name)  has a problem.")
                       print("TCT: \(units)")
                       print("TCT: does not equal")
                       print("TCT: \(unitsWithPositions)")
                       
                       XCTAssert(false)
                   }
                   
               }
           }
           XCTAssert(true)
       }
    
    // test for no duplicate champs in early units, mid units or late units
    func testForDuplicateChamps() throws {
        TeamComps.shared.allTeamComps.forEach { (teamComp) in
            let earlyChamps = teamComp.earlyUnits.map { $0.name }.sorted()
            let earlyWithoutDoubles = Array(Set(earlyChamps)).sorted()
            if earlyChamps != earlyWithoutDoubles {
                print("TCT: \(teamComp.name)  has a problem.")
                print("TCT: \(earlyChamps)")
                print("TCT: does not equal")
                print("TCT: \(earlyWithoutDoubles)")
                XCTAssert(false)
            }
            
            let midChamps = teamComp.midUnits.map { $0.name }.sorted()
            let midWithoutDoubles = Array(Set(midChamps)).sorted()
            if midChamps != midWithoutDoubles { XCTAssert(false) }
            
            let lateChamps = teamComp.units.map { $0.name }.sorted()
            let lateWithoutDoubles = Array(Set(lateChamps)).sorted()
            if lateChamps != lateWithoutDoubles { XCTAssert(false) }
        }
        XCTAssert(true)
    }
    
    func testForDuplicateChampsSet2() throws {
        TeamCompsSet2.shared.allTeamComps.forEach { (teamComp) in
            let earlyChamps = teamComp.earlyUnits.map { $0.name }.sorted()
            let earlyWithoutDoubles = Array(Set(earlyChamps)).sorted()
            if earlyChamps != earlyWithoutDoubles {
                print("TCT: \(teamComp.name)  has a problem.")
                print("TCT: \(earlyChamps)")
                print("TCT: does not equal")
                print("TCT: \(earlyWithoutDoubles)")
                XCTAssert(false)
            }
            
            let midChamps = teamComp.midUnits.map { $0.name }.sorted()
            let midWithoutDoubles = Array(Set(midChamps)).sorted()
            if midChamps != midWithoutDoubles { XCTAssert(false) }
            
            let lateChamps = teamComp.units.map { $0.name }.sorted()
            let lateWithoutDoubles = Array(Set(lateChamps)).sorted()
            if lateChamps != lateWithoutDoubles { XCTAssert(false) }
        }
        XCTAssert(true)
    }
    
    func testForDuplicateChampsSet3() throws {
        TeamCompsSet3.shared.allTeamComps.forEach { (teamComp) in
            let earlyChamps = teamComp.earlyUnits.map { $0.name }.sorted()
            let earlyWithoutDoubles = Array(Set(earlyChamps)).sorted()
            if earlyChamps != earlyWithoutDoubles {
                print("TCT: \(teamComp.name)  has a problem.")
                print("TCT: \(earlyChamps)")
                print("TCT: does not equal")
                print("TCT: \(earlyWithoutDoubles)")
                XCTAssert(false)
            }
            
            let midChamps = teamComp.midUnits.map { $0.name }.sorted()
            let midWithoutDoubles = Array(Set(midChamps)).sorted()
            if midChamps != midWithoutDoubles { XCTAssert(false) }
            
            let lateChamps = teamComp.units.map { $0.name }.sorted()
            let lateWithoutDoubles = Array(Set(lateChamps)).sorted()
            if lateChamps != lateWithoutDoubles { XCTAssert(false) }
        }
        XCTAssert(true)
    }
    
    // tests to make sure each level of champ drop rates = 100 percent
    func testDropRatesAre100percent() throws {
        
        let dropRates = DropRateData.shared.dropRates
        
        let dropRatesTiers = [dropRates.tier1, dropRates.tier2, dropRates.tier3, dropRates.tier4, dropRates.tier5]
        
        for i in 0 ..< 7 {
            var percent: Float = 0
            for tier in dropRatesTiers {
                percent += tier[i] ?? 0
            }
            if percent != 100 {
                print("TCT: problem in lvl \(i + 2) drop rates")
                XCTAssert(false)
            }

        }
        
        XCTAssert(true)
    }
    
    func testTwoTeamCompsDontHaveSameChamps() {
        TeamComps.shared.allTeamComps.forEach { (team1) in
            var duplicates = [String : [Champion]]()
            TeamComps.shared.allTeamComps.forEach { (team2) in
                if (team1.units.map { $0.name }.sorted()) == (team2.units.map { $0.name }.sorted()) {
                    duplicates[team1.name] = team1.units
                    duplicates[team2.name] = team2.units
                }
            }
            if duplicates.count > 1 {
                print("TCT: duplicates \(duplicates)")
                XCTAssert(false)
            }
        }
        XCTAssert(true)
    }
    
    func testTwoTeamCompsDontHaveSameChampsSet2() {
        TeamCompsSet2.shared.allTeamComps.forEach { (team1) in
            var duplicates = [String : [Champion]]()
            TeamCompsSet2.shared.allTeamComps.forEach { (team2) in
                if (team1.units.map { $0.name }.sorted()) == (team2.units.map { $0.name }.sorted()) {
                    duplicates[team1.name] = team1.units
                    duplicates[team2.name] = team2.units
                }
            }
            if duplicates.count > 1 {
                duplicates.forEach {
                    print("TCT: duplicates \($0.key)")
                }
                XCTAssert(false)
            }
        }
        XCTAssert(true)
    }
    
    func testTwoTeamCompsDontHaveSameChampsSet3() {
        TeamCompsSet3.shared.allTeamComps.forEach { (team1) in
            var duplicates = [String : [Champion]]()
            TeamCompsSet3.shared.allTeamComps.forEach { (team2) in
                if (team1.units.map { $0.name }.sorted()) == (team2.units.map { $0.name }.sorted()) {
                    duplicates[team1.name] = team1.units
                    duplicates[team2.name] = team2.units
                }
            }
            if duplicates.count > 1 {
                duplicates.forEach {
                    print("TCT: duplicates \($0.key)")
                }
                XCTAssert(false)
            }
        }
        XCTAssert(true)
    }
    
}

