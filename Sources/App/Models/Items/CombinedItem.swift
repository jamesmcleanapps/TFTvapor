import Vapor
import  FluentMySQL

enum ItemRating:String, Codable, CaseIterable {
    case S,A,B,C
}

protocol Item {
    var name: String { get set }
    var bonus: String { get set}
}

final class CombinedItem: Codable, Item, Hashable {
    var id: Int?
    var name: String
    var bonus: String
    var rating: ItemRating
    var recipe: [BasicItem]

    init(name: String, bonus: String, rating: ItemRating, recipe: [BasicItem]) {
        self.name = name
        self.bonus = bonus
        self.rating = rating
        self.recipe = recipe
    }
    
    func setRating(to newRating: ItemRating) {
        self.rating = newRating
    }
    
    static func == (lhs: CombinedItem, rhs: CombinedItem) -> Bool {
        return lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
    
}

extension CombinedItem: MySQLModel {}
extension CombinedItem: Content {}
extension CombinedItem: Migration{}
extension CombinedItem: Parameter{}
