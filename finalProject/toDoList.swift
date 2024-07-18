//
//  toDoList.swift
//  finalProject
//
//  Created by Scholar on 7/18/24.
//

import SwiftUI

struct toDoList: View {
    @State var toDoItems: [ToDoItem] = []
    @State private var showNewTask = false
    var body: some View {
        ZStack{
            Color.init(red: 252/255, green: 222/255, blue: 228/255)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("To Do List")
                     .font(.system(size: 40))
                     .fontWeight(.black)
                Spacer()
                Button(action :  {
                    self.showNewTask = true

                }) {
                    Text("+")
                }
                HStack{
                    
                }
                .padding()
            }
            List {
                ForEach (toDoItems) { toDoItem in
                    if toDoItem.isImportant == true {
                        Text("‼️" + toDoItem.title)
                    } else {
                        Text(toDoItem.title)
                    }
                        }
            }
            if showNewTask {
                NewToDoView(title: "", isImportant: false, toDoItems: $toDoItems, showNewTask: $showNewTask)
            }
        }
    }
}

#Preview {
    toDoList()
}
