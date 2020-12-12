//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Alexander Pismenskiy on 10.12.2020.
//

import SwiftUI

struct MainView: View {

    @State var buttonLabel = "Start"
    @State var tapCount = -1
    @State var buttonImage = ""

    
    var redLight = ColorCircle(color: .red)
    var yellowLight = ColorCircle(color: .yellow)
    var greenLight = ColorCircle(color: .green)
    
    var body: some View {
        
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 20) {
                redLight.opacity(tapCount == 0 ? 1 : 0.3)
                yellowLight.opacity(tapCount == 1 ? 1 : 0.3)
                greenLight.opacity(tapCount == 2 ? 1 : 0.3)
                
                Spacer()
                
                Button(action: {
                    buttonLabel = "Next"
                    buttonImage = "airplane"
                    tapCount += 1
                    if tapCount == 3 {
                        tapCount = 0
                    }
                }) {
                    HStack(spacing: 10) {
                        Image(systemName: buttonImage)
                            .foregroundColor(.red)
                            .font(.title3)
                        
                        Text("\(buttonLabel)")
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
        }
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
