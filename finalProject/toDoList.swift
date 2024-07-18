//
//  toDoList.swift
//  finalProject
//
//  Created by Scholar on 7/18/24.
//

import SwiftUI

struct toDoList: View {
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
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }) {
                    Text("+")
                }
                HStack{
                    
                }
                .padding()
            }
        }
    }
}

#Preview {
    toDoList()
}
