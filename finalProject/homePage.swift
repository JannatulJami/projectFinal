//
//  homePage.swift
//  finalProject
//
//  Created by Scholar on 7/17/24.
//

import SwiftUI

struct homePage: View {
   
    var body: some View {
        ZStack{
            Color.init(red: 252/255, green: 222/255, blue: 228/255)
                .edgesIgnoringSafeArea(.all)
            Text("Productivty Pal")
                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                .fontWeight(.black)
                .foregroundColor(Color(hue: 1.0, saturation: 0.322, brightness: 0.729))
                .multilineTextAlignment(.center)
                .underline()
                .scenePadding(/*@START_MENU_TOKEN@*/.minimum/*@END_MENU_TOKEN@*/, edges: /*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
               
                
                
              
                
            

            
        }
    }
}

#Preview {
    homePage()
}
