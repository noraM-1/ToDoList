//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Amanda Martin on 7/14/25.
//

import SwiftUI
import SwiftData


@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}
