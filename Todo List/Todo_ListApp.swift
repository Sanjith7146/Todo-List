//
//  Todo_ListApp.swift
//  Todo List
//
//  Created by sanjithsethu on 24/7/21.
//

import SwiftUI

@main
struct TodosApp: App {
    
    @ObservedObject var todoData = TodoData()
    @Environment(\.scenePhase) var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView(todos: $todoData.todos)
                .onAppear {
                    todoData.load()
                }
                .onChange(of: scenePhase) { phase in
                    if phase == .inactive {
                        todoData.save()
                    }
                }
        }
    }
}
