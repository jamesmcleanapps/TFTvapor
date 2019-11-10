import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {

    let itemsController = ItemsController()
    let championsController = ChampionsController()
    let teamCompsController = TeamCompsController()
    
    try router.register(collection: itemsController)
    try router.register(collection: championsController)
    try router.register(collection: teamCompsController)
    
    let championsControllerSet2 = ChampionsControllerSet2()
    try router.register(collection: championsControllerSet2)
 
}
