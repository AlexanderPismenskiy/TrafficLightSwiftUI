//
//  StartButton.swift
//  TrafficLightSwiftUI
//
//  Created by Alexander Pismenskiy on 13.12.2020.
//

import SwiftUI

struct StartButton: View {
    let buttonLabel: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(buttonLabel)
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
            .frame(width: 110, height: 40)
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 5))
            .background(Color(.blue))
            .cornerRadius(15)
        }
    }

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton(buttonLabel: "START", action: {})
    }
}



