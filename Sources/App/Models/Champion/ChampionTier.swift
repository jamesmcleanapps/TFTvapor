import Vapor


enum ChampionTier: String, Codable, ReflectionDecodable {
    
    case one = "One", two = "Two", three = "Three", four = "Four", five = "Five",  six = "Six", seven = "Seven"
    
    
    static func reflectDecoded() throws -> (ChampionTier, ChampionTier) {
        return (.one, .two)
    }
    
    func asInt() -> Int {
        switch self {
        case .one:
            return 1
        case .two:
            return 2
        case .three:
            return 3
        case .four:
            return 4
        case .five:
            return 5
        case .six:
            return 6
        case .seven:
            return 7
        }
    }
}
