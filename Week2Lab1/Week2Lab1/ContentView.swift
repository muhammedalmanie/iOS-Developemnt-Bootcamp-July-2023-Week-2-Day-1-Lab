//
//  ContentView.swift
//  Week2Lab1
//
//  Created by Muhammed on 7/30/23.
//

import SwiftUI

struct ContentView: View {
    @State private var pressed = false
    var body: some View {
        
        // Task 4
        VStack {
            
            // Task 1
            Text("Week 2, Lab 1")
                .foregroundColor(.orange)
                .font(.system(.largeTitle))
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .fontDesign(.serif)

            // Task 2
            Image("image1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350)
                .cornerRadius(20)
            
            // Task 3
            Button("PRESS ME!") {
                pressed.toggle()
            }
            .font(.system(size: 18))
            .foregroundColor(.white)
            .padding(10)
            .background(.orange)
            .cornerRadius(20)

            if pressed {
                Text("The button has been pressed (:")
                .font(.system(size: 14))            }
            
            // Task 5
            HStack{
             
                Text("This is a HStack (:")
                    .fontDesign(.serif)

                Image(systemName:"map.fill")
                
                Button("PRESS ME!") {
                    pressed.toggle()
                }
                .font(.system(size: 18))
                .foregroundColor(.white)
                .padding(10)
                .background(.orange)
                .cornerRadius(20)

                if pressed {
                    Text("The button has been pressed (:")
                        .font(.system(size: 14))
                }
            }
            
            // Task 6
            ZStack{
                Rectangle()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350)
                
                    .overlay(
                        Image("image1")
                            .resizable()
                    )
                    
                VStack{
                    Spacer()
                    Text("Hogwarts Castle")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .bold()
                    Text("2023")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .bold()
                }
                .padding()
            }
            Spacer()
        }
        .padding(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
