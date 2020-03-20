//
//  TeamComp.swift
//  App
//
//  Created by James Mclean on 02/10/2019.
//

import Foundation
import Fluent
import Vapor
import FluentMySQL

enum TeamCompSet: String, CaseIterable, Codable, ReflectionDecodable {
    case set1, set2, set3
}

struct TeamComp: Equatable, Codable {
    
    // MARK: PROPERTIES
    var id: Int?
    var name: String
    var teamCompSet: TeamCompSet = .set1
    var tier: TeamCompTier
    var patch: String
    var earlyUnits: [Champion]
    var midUnits: [Champion]
    var units: [Champion]
    var carries: [Champion]
    var carryItems: [Champion : [CombinedItem]]
    var teamCompPositions: TeamCompPositions?
    var webLink: String?
    
    // MARK: COMPUTED PROPERTIES
    var synergiesLbl: String {
        var synergiesString = ""
        
        switch  teamCompSet {
        case .set1:
            let originArr = Array(Set(originss)) // change to Set and back to remove duplicates
            originArr.forEach {
                synergiesString += "   \(unitsOfOrigin(type: $0) + calculateBonusItems(origin: $0)) x \($0)   ".capitalized
            }
            
            let classArr = Array(Set(classess))
            classArr.forEach {
                print("Has bonus for class \($0): \(calculateBonusItems(champClass: $0))")
                synergiesString += "   \(unitsOfClass(type: $0) + calculateBonusItems(champClass: $0)) x \($0)   ".capitalized
            }
        case .set2:
            let elementsArr = Array(Set(elements))
            elementsArr.forEach {
                synergiesString += "   \(unitsOfElement(type: $0) + calculateBonusItems(element: $0)) x \($0)   ".capitalized
            }
            
            let classSet2Arr = Array(Set(classesSet2))
            classSet2Arr.forEach {
                print("Has bonus for class \($0): \(calculateBonusItems(champClass: $0))")
                synergiesString += "   \(unitsOfClassSet2(type: $0) + calculateBonusItems(champClass: $0)) x \($0)   ".capitalized
            }
        case .set3:
            let originsArr = Array(Set(originsSet3))
            originsArr.forEach {
                synergiesString += "   \(unitsOfOriginSet3(type: $0) + calculateBonusItems(origin: $0)) x \($0)   ".capitalized
            }
            
            let classSet3Arr = Array(Set(classesSet3))
            classSet3Arr.forEach {
                print("Has bonus for class \($0): \(calculateBonusItems(champClass: $0))")
                synergiesString += "   \(unitsOfClassSet3(type: $0) + calculateBonusItems(champClass: $0)) x \($0)   ".capitalized
            }
        }
        
        return synergiesString
    }
    
    var originss: [ChampionOrigin] {
        var possibleOrigins = [ChampionOrigin]()
        units.forEach {
            $0.championOrigin.forEach {
                possibleOrigins.append($0)
            }
        }
        print("Possible Origins for \(self.name): \(possibleOrigins)")
        
        var originsToReturn = [ChampionOrigin]()
        possibleOrigins.forEach { origin in
            var originCount = possibleOrigins.filter { $0 == origin }.count // the number of times this origin appears in possble origins
            
            //let bonusItem = ChampionOrigin.itemForBonus(origin: origin)
            
            
            originCount += calculateBonusItems(origin: origin) // adds item bonuses, eg +1 knight for 1 knights vow
            
            if originCount >= ChampionOrigin.minimumUnitsForBonus(origin: origin) { // if this is greater than the bonus required add it to the origins for this team comp
                originsToReturn.append(origin)
            }
        }
        
        originsToReturn = Array(Set(originsToReturn)) // get rid of duplicates
        print("Origins for \(self.name): \(originsToReturn)")
        return originsToReturn
    }
    
    var elements: [ChampionElementSet2] {
        var possibleElements = [ChampionElementSet2]()
        units.forEach {
            $0.championElementSet2.forEach {
                possibleElements.append($0)
            }
        }
        print("Possible Origins for \(self.name): \(possibleElements)")
        
        var elementsToReturn = [ChampionElementSet2]()
        possibleElements.forEach { element in
            var elementCount = possibleElements.filter { $0 == element }.count // the number of times this origin appears in possible elements
            
            elementCount += calculateBonusItems(element: element) // adds item bonuses, eg +1 knight for 1 knights vow
            
            if elementCount >= ChampionElementSet2.minimumUnitsForBonus(element: element) { // if this is greater than the bonus required add it to the origins for this team comp
                elementsToReturn.append(element)
            }
        }
        
        elementsToReturn = Array(Set(elementsToReturn)) // get rid of duplicates
        print("Origins for \(self.name): \(elementsToReturn)")
        return elementsToReturn
    }
    
    var originsSet3: [ChampOriginSet3] {
        var possibleOrigins = [ChampOriginSet3]()
        units.forEach {
            $0.championOriginSet3.forEach {
                possibleOrigins.append($0)
            }
        }
        print("Possible Origins for \(self.name): \(possibleOrigins)")
        
        var originsToReturn = [ChampOriginSet3]()
        possibleOrigins.forEach { origin in
            var elementCount = possibleOrigins.filter { $0 == origin }.count // the number of times this origin appears in possible elements
            
            elementCount += calculateBonusItems(origin: origin) // adds item bonuses, eg +1 knight for 1 knights vow
            
            if elementCount >= ChampOriginSet3.minimumUnitsForBonus(origin: origin) { // if this is greater than the bonus required add it to the origins for this team comp
                originsToReturn.append(origin)
            }
        }
        
        originsToReturn = Array(Set(originsToReturn)) // get rid of duplicates
        print("Origins for \(self.name): \(originsToReturn)")
        return originsToReturn
    }
    
    var classess: [ChampionClass] {
        var possibleClasses = [ChampionClass]()
        units.forEach {
            $0.championClass.forEach {
                possibleClasses.append($0)
            }
        }
        
        print("Possible Classes for \(self.name): \(possibleClasses)")
        
        var classesToReturn = [ChampionClass]()
        possibleClasses.forEach { unitClass in
            var classCount = possibleClasses.filter { $0 == unitClass }.count // the number of times this class appears in possble class
            
            classCount += calculateBonusItems(champClass: unitClass) // adds item bonuses, eg +1 knight for 1 knights vow
            
            if classCount >= ChampionClass.minimumUnitsForBonus(chmpClass: unitClass) { // if this is greater than the bonus required add it to the origins for this team comp
                classesToReturn.append(unitClass)
            }
        }
        
        classesToReturn = Array(Set(classesToReturn)) // get rid of duplicates
        print("Classes for \(self.name): \(classesToReturn)")
        return classesToReturn
    }
    
    var classesSet2: [ChampionClassSet2] {
        var possibleClasses = [ChampionClassSet2]()
        units.forEach {
            $0.championClassSet2.forEach {
                possibleClasses.append($0)
            }
        }
        
        print("Possible Classes for \(self.name): \(possibleClasses)")
        
        var classesToReturn = [ChampionClassSet2]()
        possibleClasses.forEach { unitClass in
            var classCount = possibleClasses.filter { $0 == unitClass }.count // the number of times this class appears in possble class
            
            classCount += calculateBonusItems(champClass: unitClass) // adds item bonuses, eg +1 knight for 1 knights vow
            
            if classCount >= ChampionClassSet2.minimumUnitsForBonus(chmpClass: unitClass) { // if this is greater than the bonus required add it to the origins for this team comp
                classesToReturn.append(unitClass)
            }
        }
        
        classesToReturn = Array(Set(classesToReturn)) // get rid of duplicates
        print("Classes for \(self.name): \(classesToReturn)")
        return classesToReturn
    }
    
    var classesSet3: [ChampClassSet3] {
        var possibleClasses = [ChampClassSet3]()
        units.forEach {
            $0.championClassSet3.forEach {
                possibleClasses.append($0)
            }
        }
        
        print("Possible Classes for \(self.name): \(possibleClasses)")
        
        var classesToReturn = [ChampClassSet3]()
        possibleClasses.forEach { unitClass in
            var classCount = possibleClasses.filter { $0 == unitClass }.count // the number of times this class appears in possble class
            
            classCount += calculateBonusItems(champClass: unitClass) // adds item bonuses, eg +1 knight for 1 knights vow
            
            if classCount >= ChampClassSet3.minimumUnitsForBonus(chmpClass: unitClass) { // if this is greater than the bonus required add it to the origins for this team comp
                classesToReturn.append(unitClass)
            }
        }
        
        classesToReturn = Array(Set(classesToReturn)) // get rid of duplicates
        print("Classes for \(self.name): \(classesToReturn)")
        return classesToReturn
    }
    
    // MARK: METHODS
    private func calculateBonusItems(origin: ChampionOrigin) -> Int {
        let items = carryItems.values.flatMap { $0 }
        let itemForBonus = ChampionOrigin.itemForBonus(origin: origin)
        return items.filter { $0.name == itemForBonus?.name }.count
    }
    
    private func calculateBonusItems(element: ChampionElementSet2) -> Int {
        let items = carryItems.values.flatMap { $0 }
        let itemForBonus = ChampionElementSet2.itemForBonus(element: element)
        return items.filter { $0.name == itemForBonus?.name }.count
    }
    
    private func calculateBonusItems(origin: ChampOriginSet3) -> Int {
        let items = carryItems.values.flatMap { $0 }
        let itemForBonus = ChampOriginSet3.itemForBonus(origin: origin)
        return items.filter { $0.name == itemForBonus?.name }.count
    }
    
    private func calculateBonusItems(champClass: ChampionClass) -> Int {
        let items = carryItems.values.flatMap { $0 }
        let itemForBonus = ChampionClass.itemForBonus(champClass: champClass)
        return items.filter { $0.name == itemForBonus?.name }.count
    }
    
    private func calculateBonusItems(champClass: ChampionClassSet2) -> Int {
        let items = carryItems.values.flatMap { $0 }
        let itemForBonus = ChampionClassSet2.itemForBonus(champClass: champClass)
        return items.filter { $0.name == itemForBonus?.name }.count
    }
    
    private func calculateBonusItems(champClass: ChampClassSet3) -> Int {
        let items = carryItems.values.flatMap { $0 }
        let itemForBonus = ChampClassSet3.itemForBonus(champClass: champClass)
        return items.filter { $0.name == itemForBonus?.name }.count
    }
    
    private func unitsOfClass(type: ChampionClass) -> Int {
        var count = 0
        units.forEach { if $0.championClass.contains(type) { count += 1 } }
        return count
    }
    
    private func unitsOfClassSet2(type: ChampionClassSet2) -> Int {
        var count = 0
        units.forEach { if $0.championClassSet2.contains(type) { count += 1 } }
        return count
    }
    
    private func unitsOfClassSet3(type: ChampClassSet3) -> Int {
        var count = 0
        units.forEach { if $0.championClassSet3.contains(type) { count += 1 } }
        return count
    }
    
    private func unitsOfOrigin(type: ChampionOrigin) -> Int {
        var count = 0
        units.forEach { if $0.championOrigin.contains(type) { count += 1 } }
        return count
    }
    
    private func unitsOfElement(type: ChampionElementSet2) -> Int {
        var count = 0
        units.forEach { if $0.championElementSet2.contains(type) { count += 1 } }
        return count
    }
    
    private func unitsOfOriginSet3(type: ChampOriginSet3) -> Int {
        var count = 0
        units.forEach { if $0.championOriginSet3.contains(type) { count += 1 } }
        return count
    }
    
    // Equatable
    static func == (lhs: TeamComp, rhs: TeamComp) -> Bool {
        return lhs.name == rhs.name
    }
    
    func toLowData() -> TeamCompLowData {
        let name = self.name
        let tier = self.tier
        let patch = self.patch
        let synergiesString = self.synergiesLbl
        
        var unitNamesCost = [String : Int]()
        self.units.forEach { unitNamesCost[$0.name] = $0.cost }
        
        var carryItems = [String : [String]]()
        self.carryItems.keys.forEach({ (champ) in
            carryItems[champ.name] = self.carryItems[champ].map { items in
                var itemsToReturn = [String]()
                items.forEach { (item) in
                    itemsToReturn.append(item.name)
                }
                return itemsToReturn
            }
        })
        
        return TeamCompLowData(id: nil, name: name, tier: tier, patch: patch, unitNamesCost: unitNamesCost, carryItems: carryItems, synergiesStr: synergiesString)
        
    }
}


extension TeamComp: MySQLModel {}
extension TeamComp: Content {}
extension TeamComp: Migration{}
extension TeamComp: Parameter{}

