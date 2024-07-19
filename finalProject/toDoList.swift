//
//  toDoList.swift
//  finalProject
//
//  Created by Scholar on 7/18/24.
//

import SwiftUI

struct toDoList: View {
    @Environment(\.managedObjectContext) var context
    @State private var showNewTask = false
    @FetchRequest(
        entity: ToDo.entity(), sortDescriptors: [ NSSortDescriptor(keyPath: \ToDo.id, ascending: false) ])
    
    var toDoItems: FetchedResults<ToDo>
   //let persistenceController = PersistenceController.shared
    var body: some View {
        ZStack{
            Color.init(red: 252/255, green: 222/255, blue: 228/255)
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Text("To Do List")
                        
                        .font(.system(size: 40))
                        .fontWeight(.black)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.315, brightness: 0.79))
                    Spacer()
                    
                    Button(action:  {
                        self.showNewTask = true
                        
                    }) {
                        Text("+")
                    }
                 /*   Button {
                            withAnimation {
                                    
                                self.showNewTask = true
                                        }
                                        
                                    } label: {
                                        Text("+")
                                            .font(.title)
                                            .bold()
                                    }
                   // Spacer() */
                }
                .padding()
                Spacer()
            }
          //  .padding()
            List {
                ForEach (toDoItems) { toDoItem in
                    if toDoItem.isImportant == true {
                        Text("‼️" + (toDoItem.title ?? "No title"))
                    } else {
                        Text(toDoItem.title ?? "No title")
                    }
                }
                .onDelete(perform: deleteTask)
            }
            .listStyle(.plain)
        }
        if showNewTask {
            NewToDoView(title: "", isImportant: false, showNewTask: $showNewTask)
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
}

struct toDoList_Previews: PreviewProvider {
    static var previews: some View {
 //       toDoList()
        toDoList() .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
    }
}
