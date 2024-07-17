//
//  ContentView.swift
//  finalProject
//
//  Created by Scholar on 7/16/24.
//

import SwiftUI

struct ContentView: View {
    @State var selectedDate: Date = Date()
    var body: some View {
        ZStack {
            Color.init(red: 252/255, green: 222/255, blue: 228/255)
                .edgesIgnoringSafeArea(.all)
            VStack {
                DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                Text(selectedDate.formatted(date: .abbreviated, time: .omitted))
                    .font(.title2)
                    .fontWeight(.heavy)
                    .bold()
                    .foregroundColor(Color(hue: 0.919, saturation: 0.377, brightness: 0.595))
                    .padding()
                    .animation(.spring(), value: selectedDate)
                    .frame(width: 500)
                Divider().frame(height: 1)
                DatePicker("Select Date", selection: $selectedDate, displayedComponents: [.date])
                    
                    .padding(.horizontal)
                    .datePickerStyle(.graphical)
                Divider()
            }
            .padding(.vertical, 100)
        }
        
    }
}


#Preview {
    ContentView()
}
