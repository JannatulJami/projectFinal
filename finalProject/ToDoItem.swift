//
//  ToDoItem.swift
//  finalProject
//
//  Created by Scholar on 7/18/24.
//

import Foundation

class ToDoItem: Identifiable {
    var title = ""
    var isImportant = false
    var id = UUID()
    
    
    init(title: String, isImportant: Bool = false) {
        self.title = title
        self.isImportant = isImportant
    }
}
