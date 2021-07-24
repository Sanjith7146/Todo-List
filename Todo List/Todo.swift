//
//  Todo.swift
//  Todo List
//
//  Created by sanjithsethu on 24/7/21.
//

import Foundation

struct Todo: Identifiable, Equatable, Codable {
    var id = UUID()
    
    var title: String
    var isCompleted = false
}
