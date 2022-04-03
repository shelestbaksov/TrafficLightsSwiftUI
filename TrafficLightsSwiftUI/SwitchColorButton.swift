//
//  SwitchColorButton.swift
//  TrafficLightsSwiftUI
//
//  Created by Leysan Latypova on 30.03.2022.
//

import SwiftUI

struct SwitchColorButton: View {
    let text: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(text)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.black)
            
        }
        .padding()
        .frame(width: 150, height: 60)
        .background(Color(.blue))
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.white, lineWidth: 2)
        )
    }
}
    

struct SwitchColorButton_Previews: PreviewProvider {
    static var previews: some View {
        SwitchColorButton(text: "START", action: {})
    }
}
