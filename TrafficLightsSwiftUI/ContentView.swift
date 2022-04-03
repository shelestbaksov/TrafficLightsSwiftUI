//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Leysan Latypova on 30.03.2022.
//

import SwiftUI

enum TrafficLightState {
    case off
    case red
    case yellow
    case green
}

struct ContentView: View {
    
    @State private var buttonTitle = "START"
    @State private var currentLightState = TrafficLightState.off
    
    private func switchColor() {
        switch currentLightState {
        case .off: currentLightState = .red
        case .red: currentLightState = .yellow
        case .yellow: currentLightState = .green
        case .green: currentLightState = .red
        }
    }
    
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            
            VStack(spacing: 15) {
                TrafficLightCircle(
                    color: .red,
                    opacity: currentLightState == .red ? 1 : 0.5)
                TrafficLightCircle(
                    color: .yellow,
                    opacity: currentLightState == .yellow ? 1 : 0.5)
                TrafficLightCircle(
                    color: .green,
                    opacity: currentLightState == .green ? 1 : 0.5)
                
                Spacer()
                
                SwitchColorButton(text: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    switchColor()
                }
            }
            .padding()
        
        }
         
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
