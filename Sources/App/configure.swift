import FluentMySQL
import Vapor

/// Called before your application initializes.
public func configure(_ config: inout Config, _ env: inout Environment, _ services: inout Services) throws {
    // Register providers first
    //try services.register(FluentMySQLProvider())

    // Register routes to the router
    let router = EngineRouter.default()
    try routes(router)
    services.register(router, as: Router.self)

    // Register middleware
    var middlewares = MiddlewareConfig() // Create _empty_ middleware config
    // middlewares.use(FileMiddleware.self) // Serves files from `Public/` directory
    middlewares.use(ErrorMiddleware.self) // Catches errors and converts to HTTP response
    services.register(middlewares)

//    // Configure a SQLite database
//    //let sqlite = try SQLiteDatabase(storage: .memory)
//    let databaseConfig = MySQLDatabaseConfig(hostname: "localhost", username: "james030590", password: "mercury120991", database: "vapor")
//    let database = MySQLDatabase(config: databaseConfig)
//    // Register the configured SQLite database to the database config.
//    var databases = DatabasesConfig()
//    databases.add(database: database, as: .mysql)
//    services.register(databases)

//    // Configure migrations
//    var migrations = MigrationConfig()
//    //migrations.add(model: Todo.self, database: .sqlite)
//    migrations.add(model: BasicItem.self, database: .mysql)
//    migrations.add(model: Champion.self, database: .mysql)
//    migrations.add(model: TeamComp.self, database: .mysql)
//    services.register(migrations)
}
