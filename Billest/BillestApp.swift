//
//  BillestApp.swift
//  Billest
//
//  Created by Mac-albert on 28/09/23.
//

import SwiftUI

@main
struct BillestApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeApp()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
