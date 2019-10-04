import Vapor
import FluentMySQL


struct BasicItem: Codable, Item, Equatable, Hashable {
    var id: Int?
    var name: String
    var bonus: String
}

extension BasicItem: MySQLModel {}
extension BasicItem: Content {}
extension BasicItem: Migration{}
extension BasicItem: Parameter{}



//class AllBasicItems {
//    static var shared = AllBasicItems()
//    
//    lazy var all : [BasicItem] = {
//       return [bfSword, chainVest, giantsBelt, needlesslyLargeRod, negatronCloak, recurveBow, tearOfTheGoddess, spatula, sparringGloves ]
//    }()
//    
//    
//    let bfSword = BasicItem(name: "bF sword", bonus: "+15 Attack Damage")
//    let chainVest = BasicItem(name: "chain vest", bonus: "+20 Armor")
//    let giantsBelt = BasicItem(name: "giant's belt", bonus: "+200 Health")
//    let needlesslyLargeRod = BasicItem(name: "needlessly large rod", bonus: "+20 Spell Damage")
//    let negatronCloak = BasicItem(name: "negatron cloak", bonus: "+20 Magic Resist")
//    let recurveBow = BasicItem(name: "recurve bow", bonus: "+20% Attack Speed")
//    let tearOfTheGoddess = BasicItem(name: "tear of the goddess", bonus: "+20 mana")
//    let spatula = BasicItem(name: "spatula", bonus: "It must do something...")
//    let sparringGloves = BasicItem(name: "sparring gloves", bonus: "Gives +10% Critical Strike chance and +10% chance to Dodge chance.")
//    
//    func getBasicItem(with name: String) throws -> BasicItem {
//        var itemToReturn: BasicItem?
//        all.forEach { (basicItem) in
//            if basicItem.name == name { itemToReturn = basicItem }
//        }
//        if itemToReturn == nil { throw Abort(.badRequest)}
//        return itemToReturn!
//    }
//}

