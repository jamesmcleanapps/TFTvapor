import Fluent
import Vapor

struct ItemsController: RouteCollection {
    func boot(router: Router) throws {
        let itemsRoute = router.grouped("api", "items")
        itemsRoute.get("basic", use: getAllBasicItemsHandler)
        itemsRoute.get("combined", use: getAllCombinedItemsHandler)
        itemsRoute.get("basic", String.parameter, use: getBasicItemWithName)
        itemsRoute.get("combined", String.parameter, use: getCombinedItemWithName)
        itemsRoute.get("combined", "champions", String.parameter , String.parameter, use: getGoodChampionsForItem)
        itemsRoute.get("combined", "byrating", String.parameter, use: getCombinedItemsByRating)
    }
    
    func getAllBasicItemsHandler(_ req: Request) throws -> [BasicItem] {
        return Items.shared.allBasicItems
    }
    
    func getAllCombinedItemsHandler(_ req: Request) throws -> [CombinedItem] {
        print("In get all combined items handler")
        return Items.shared.allCombinedItems
    }
    
    func getBasicItemWithName(_ req: Request) throws -> BasicItem {
        let str = try req.parameters.next(String.self)
        let items = Items.shared.allBasicItems.filter { $0.name == str }
        if items.count == 1 { return items[0]} else { throw Abort(.badRequest)}
    }
    
    func getCombinedItemWithName(_ req: Request) throws -> CombinedItem {
        let str = try req.parameters.next(String.self)
        var items = ItemsSet2.shared.allCombinedItems.filter { $0.name == str }
        if items.isEmpty {
            items = Items.shared.allCombinedItems.filter { $0.name == str }
        }
        
        if items.count == 1 { return items[0]} else { throw Abort(.badRequest)}
    }
    
    func getGoodChampionsForItem(_ req: Request) throws -> [String] {
        let set = try req.parameters.next(String.self)
        let itemName = try req.parameters.next(String.self)
        let item : [CombinedItem]
        if set == "set1" {
            item = Items.shared.allCombinedItems.filter { $0.name == itemName }
        } else {
            item = ItemsSet2.shared.allCombinedItems.filter { $0.name == itemName }
        }
        
        if item.count == 1 {
            if set == "set1" {
                let champions = Champions.shared.goodChamps(for: item[0])
                return champions.map { $0.name }
            } else {
                let champions = ChampionsSet2.shared.goodChamps(for: item[0])
                return champions.map { $0.name }
            }
            
            
        } else {
            throw Abort(.badRequest)
        }
    }
    
    func getCombinedItemsByRating(_ req: Request) throws -> [[CombinedItem]] {
        let set = try req.parameters.next(String.self)
        if set == "set1" {
            return Items.shared.itemsByRating
        } else { // set2
            return ItemsSet2.shared.itemsByRating
        }
        
    }
    
    
}
