//
//  SwiftUIView.swift
//  TrafficLight
//
//  Created by Romanovich Bogdan on 01.06.2021.
//

import SwiftUI

struct ColorCircle: View {
    var color: Color
    var powerOn = false
    
    private var opacity: Double {
        powerOn ? 1 : 0.3
    }
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .opacity(opacity)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .yellow, powerOn: true)
    }
}
