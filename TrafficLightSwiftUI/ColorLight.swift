//
//  ColorCircle.swift
//  TrafficLightSwiftUI
//
//  Created by Alexander Pismenskiy on 10.12.2020.
//

import SwiftUI

struct ColorLight: View {
    let color: UIColor
    let opacity: CGFloat
    
    var body: some View {
        Color(color).opacity(Double(opacity))
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorLight(color: .red, opacity: 0.3)
    }
}

