//
//  MVPApp.swift
//  MVP
//
//  Created by Scholar on 7/29/24.
//

import SwiftUI
import SwiftData

@main
struct MVPApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: ClosetItem.self)
        }
    }
}
