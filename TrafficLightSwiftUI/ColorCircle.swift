//
//  ColorCircle.swift
//  TrafficLightSwiftUI
//
//  Created by Alexander Pismenskiy on 10.12.2020.
//

import SwiftUI

struct ColorCircle: View {
    var color: UIColor
    
    
    var body: some View {
        Color(color)
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
//            .shadow(radius: 10)
//            .opacity(0.3)
    }
}


struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red)
    }
}

