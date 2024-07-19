//
//  toDoList.swift
//  finalProject
//
//  Created by Scholar on 7/18/24.
//

import SwiftUI

struct toDoList: View {
    @Environment(\.managedObjectContext) var context
    @FetchRequest(
        entity: ToDo.entity(), sortDescriptors: [ NSSortDescriptor(keyPath: \ToDo.id, ascending: false) ])
    
    var toDoItems: FetchedResults<ToDo>
    @State private var showNewTask = false
    let persistenceController = PersistenceController.shared
    var body: some View {
        ZStack{
            Color.init(red: 252/255, green: 222/255, blue: 228/255)
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Text("To Do List")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                    Spacer()
                    Button(action :  {
                        self.showNewTask = true
                        
                    }) {
                        Text("+")
                    }
                }
                .padding()
                Spacer()
            
            List {
                ForEach (toDoItems) { toDoItem in
                    if toDoItem.isImportant == true {
                        Text("‼️" + (toDoItem.title ?? "No title"))
                    } else {
                        Text(toDoItem.title ?? "No title")
                    }
                }
                onDelete(perform: deleteTask)
            }
            if showNewTask {
                NewToDoView(title: "", isImportant: false, showNewTask: $showNewTask)
            }
        }
    }
    }
}
    private func deleteTask(offsets: IndexSet) {
        withAnimation {
            offsets.map { toDoItems[$0] }.forEach(context.delete)
            
            do {
                try context.save()
            } catch {
                print(error)
            }
        }
    }




#Preview {
    toDoList().environment(\.managedObjectContext, persistenceController.container.viewContext)
}
