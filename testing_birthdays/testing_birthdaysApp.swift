//
//  testing_birthdaysApp.swift
//  testing_birthdays
//
//  Created by Tracey Bullington on 7/10/25.
//

import SwiftUI
import SwiftData

@main
struct testing_birthdaysApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Friend.self)
        }
    }
}
