//
//  ContentView.swift
//  finalProject
//
//  Created by Scholar on 7/16/24.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.init(red: 252/255, green: 222/255, blue: 228/255)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Color.init(red: 252/255, green: 222/255, blue: 228/255)
                        .edgesIgnoringSafeArea(.all)
                    Text("Productivty Pal ")
                        .font(.largeTitle)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.322, brightness: 0.729))
                        .multilineTextAlignment(.center)
                        .lineLimit(0)
                        .padding(65)
                    Text("Hello! ")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hue: 0.898, saturation: 0.976, brightness: 0.435))
                        .multilineTextAlignment(.center)
                        .lineLimit(3)
                        .padding(4.0)
                    Text("Nice to meet you I am your personal assitant.")
                        .font(.callout)
                        .fontWeight(.light)
                        .foregroundColor(Color(hue: 0.898, saturation: 0.976, brightness: 0.435))
                        .multilineTextAlignment(.center)
                        .padding(4.0)
                    Text("Here to help organize your day to day life.")
                        .font(.callout)
                        .fontWeight(.light)
                        .foregroundColor(Color(hue: 0.898, saturation: 0.976, brightness: 0.435))
                        .multilineTextAlignment(.center)
                    Image("pig")
                        .resizable()
                        .frame(width: 220, height: 220)
                    /* Text("Hello! Nice to meet you I am your personal assitant. Here to help organize your day to day life.")
                     .font(.callout)
                     .fontWeight(.light)
                     .foregroundColor(Color(hue: 0.898, saturation: 0.976, brightness: 0.435))
                     .multilineTextAlignment(.center) */
                        .padding(90)
                    HStack {
                        Button(action: {
                            // Action to perform when button is tapped
                            print("Button tapped!")
                        }) {
                            Image("Calender")
                                .resizable()
                                .frame(width: 80, height: 80) // specify desired width and height .aspectRatio(contentMode: .fit) // optional, to maintain aspect ratio
                                .cornerRadius(/*@START_MENU_TOKEN@*/12.0/*@END_MENU_TOKEN@*/)
                            Image("to do list")
                                .resizable()
                                .frame(width: 80, height: 80) // specify desired width and height .aspectRatio(contentMode: .fit) // optional, to maintain aspect ratio
                                .cornerRadius(/*@START_MENU_TOKEN@*/12.0/*@END_MENU_TOKEN@*/)
                            Image("reminders")
                                .resizable()
                                .frame(width: 80, height: 80) // specify desired width and height .aspectRatio(contentMode: .fit) // optional, to maintain aspect ratio
                                .cornerRadius(/*@START_MENU_TOKEN@*/12.0/*@END_MENU_TOKEN@*/)
                            Image("journal")
                                .resizable()
                                .frame(width: 80, height: 80) // specify desired width and height .aspectRatio(contentMode: .fit) // optional, to maintain aspect ratio
                                .cornerRadius(/*@START_MENU_TOKEN@*/12.0/*@END_MENU_TOKEN@*/)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}






