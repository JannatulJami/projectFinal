//
//  calendarPage.swift
//  finalProject
//
//  Created by Scholar on 7/17/24.
//

import SwiftUI

struct calendarPage: View {
        @State var selectedDate: Date = Date()
    let persistenceController = PersistenceController.shared
        var body: some View {
            ZStack {
                Color.init(red: 252/255, green: 222/255, blue: 228/255)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                        .position(x : 100, y : 20)
                    Text(selectedDate.formatted(date: .abbreviated, time: .omitted))
                        .font(.title2)
                        .fontWeight(.heavy)
                        .bold()
                        .foregroundColor(                   (Color(hue: 1.0, saturation: 0.286, brightness: 0.656))
)
                        .padding()
                        .animation(.spring(), value: selectedDate)
                        .frame(width: 500)
                    Divider().frame(height: 1)
                    DatePicker("Select Date", selection: $selectedDate, displayedComponents: [.date])
                        
                        .padding(.horizontal)
                        .datePickerStyle(.graphical)
                        .accentColor(Color(hue: 1.0, saturation: 0.286, brightness: 0.656))
                    Divider()
                        .accentColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.072, brightness: 1.0)/*@END_MENU_TOKEN@*/)
                }
                .padding(.vertical, 100)
            }
            
        }
    }


#Preview {
    calendarPage()
}
