//
//  TrafficLights.swift
//  TrafficLight
//
//  Created by Romanovich Bogdan on 01.06.2021.
//

import SwiftUI

struct TrafficLights: View {
    
    var state = "none"
    
    private var powerRed: Bool {
        state == "red" ? true : false
    }
    private var powerYellow: Bool {
        state == "yellow" ? true : false
    }
    private var powerGreen: Bool {
        state == "green" ? true : false
    }
    
    var body: some View {
        VStack{
            ColorCircle(color: .red, powerOn: powerRed)
            ColorCircle(color: .yellow, powerOn: powerYellow)
            ColorCircle(color: .green, powerOn: powerGreen)
        }
    }
    
    mutating func switchState() {
        switch state {
        case "red":
            state = "yellow"
        case "yellow":
            state = "green"
        case "green":
            state = "red"
        default:
            state = "red"
        }
    }
}



struct TrafficLights_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLights()
    }
}
