//
//  NewToDoView.swift
//  finalProject
//
//  Created by Scholar on 7/18/24.
//

import SwiftUI
struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false)
    }
    @Binding var toDoItems: [ToDoItem]
    @Binding var showNewTask : Bool
}
struct NewToDoView: View {
    @State var title: String
    @State var isImportant: Bool
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
            NewToDoView(title: "", isImportant: false, toDoItems: .constant([]))
    }
    private func addTask(title: String, isImportant: Bool = false) {
            let task = ToDoItem(title: title, isImportant: isImportant)
            toDoItems.append(task)
    showNewTask: .constant(true)
    }


#Preview {
    NewToDoView()
}
