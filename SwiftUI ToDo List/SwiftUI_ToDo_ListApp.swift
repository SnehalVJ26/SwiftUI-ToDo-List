//
//  SwiftUI_ToDo_ListApp.swift
//  SwiftUI ToDo List
//
//  Created by mnameit on 25/05/23.
//

import SwiftUI
import FirebaseCore

@main
struct SwiftUI_ToDo_ListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
