//
//  SalonColor_InventoryApp.swift
//  SalonColor-Inventory
//
//  Created by Luiz Fernando Paes on 14/02/24.
//

import SwiftUI
import SwiftData

@main
struct SalonColor_InventoryApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
