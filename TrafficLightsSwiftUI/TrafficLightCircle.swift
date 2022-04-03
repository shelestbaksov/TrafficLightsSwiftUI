//
//  TrafficLightCircle.swift
//  TrafficLightsSwiftUI
//
//  Created by Leysan Latypova on 30.03.2022.
//

import SwiftUI

struct TrafficLightCircle: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(.white, lineWidth: 2))
            
    }
}

struct TrafficLightCircle_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightCircle(color: .red, opacity: 1)
    }
}
