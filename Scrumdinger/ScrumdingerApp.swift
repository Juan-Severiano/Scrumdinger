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
    @State private var scrums = DailyScrum.sampleData

    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
