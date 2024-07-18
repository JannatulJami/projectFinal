//
//  reminder.swift
//  finalProject
//
//  Created by Scholar on 7/17/24.
//

import SwiftUI
import Foundation


        struct Reminder {
          var title: String
          var isCompleted = false
        
    }

extension Reminder {
  static let samples = [
    Reminder(title: "Build sample app", isCompleted: true),
    Reminder(title: "Create tutorial"),
    Reminder(title: "???"),
    Reminder(title: "PROFIT!"),
  ]
}



