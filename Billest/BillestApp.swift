//
//  BillestApp.swift
//  Billest
//
//  Created by Mac-albert on 28/09/23.
//


import SwiftUI
import FirebaseCore


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct BillestApp: App {
  // register app delegate for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            HomeApp()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

