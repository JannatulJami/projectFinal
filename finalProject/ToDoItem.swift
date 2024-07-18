//
//  ToDoItem.swift
//  finalProject
//
//  Created by Scholar on 7/18/24.
//

import Foundation

class ToDoItem{
    var title = ""
    var isImportant = false
    
}
init(title: String, isImportant: Bool = false) {
        self.title = title
        self.isImportant = isImportant
    }
