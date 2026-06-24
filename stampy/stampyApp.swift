//
//  stampyApp.swift
//  stampy
//
//  Created by Daniel Istrati on 23.06.2026.
//

import SwiftUI
import CoreData

@main
struct stampyApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
