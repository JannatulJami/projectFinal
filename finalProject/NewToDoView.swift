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
                  
                }) {
                    Text("Add")
                        .padding()
                    
            }
        }
    }
}

#Preview {
    NewToDoView()
}
