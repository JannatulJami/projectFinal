//
//  NewToDoView.swift
//  finalProject
//
//  Created by Scholar on 7/18/24.
//

import SwiftUI
struct NewToDoView_Previews: PreviewProvider {
    @Environment(\.managedObjectContext) var context
    static var previews: some View {
        NewToDoView(title: "", isImportant: false)
    }
    @Binding var toDoItems: [ToDoItem]
    @Binding var showNewTask : Bool
}
struct NewToDoView: View {
    @State var title: String
    @State var isImportant: Bool
    let persistenceController = PersistenceController.shared
    var body: some View {
        ZStack{
            Color.init(red: 252/255, green: 222/255, blue: 228/255)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Task Title:")
                TextField("Enter the task description...", text: $title)
                    .padding()
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                    .padding()
                Toggle(isOn: $isImportant) {
                    Text("Is it important?")
                }
                .padding()
                
                Button(action: {
                    self.addTask(title: self.title, isImportant: self.isImportant)
                    self.showNewTask = false
                }) {
                    Text("Add")
                }
                    
                }
            }
        }
    }
    static var previews: some View {
            NewToDoView(title: "", isImportant: false)
    }
    private func addTask(title: String, isImportant: Bool = false) {
        let task = ToDo(context: context)
        task.id = UUID()
        task.title = title
        task.isImportant = isImportant
                
        do {
                    try context.save()
        } catch {
            print(error)
        }
    }


#Preview {
    NewToDoView()
}
