//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Francisco Juan on 13/06/25.
//

import SwiftUI
import SwiftData

@main
struct ScrumdingerApp: App {
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
            MeetingView()
        }
        .modelContainer(sharedModelContainer)
    }
}
