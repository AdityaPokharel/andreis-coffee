//
//  Andrei_s_CoffeeApp.swift
//  Andrei's Coffee
//
//  Created by Andy on 30/4/21.
//

import SwiftUI

@main
struct Andrei_s_CoffeeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
