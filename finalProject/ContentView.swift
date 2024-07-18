//
//  ContentView.swift
//  finalProject
//
//  Created by Scholar on 7/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.init(red: 252/255, green: 222/255, blue: 228/255)
                .edgesIgnoringSafeArea(.all)
            Text("Productivty Pal")
                .font(.largeTitle)
                .foregroundColor(Color(hue: 1.0, saturation: 0.322, brightness: 0.729))
                .multilineTextAlignment(.center)
        }
    }
}



#Preview {
    ContentView()
}
