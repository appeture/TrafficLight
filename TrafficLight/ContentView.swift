//
//  ContentView.swift
//  TrafficLight
//
//  Created by Romanovich Bogdan on 01.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var buttonPressed = false
    @State var trafficLight = TrafficLights()
    
    var body: some View {
        
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            VStack{
                trafficLight
                Spacer()
                
                Button(buttonPressed ? "Next" : "Start") {
                    buttonPressed = true
                    trafficLight.switchState()
                }
                .frame(width: 200, height: 75)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .foregroundColor(.white)
                .font(.title)
            }
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
