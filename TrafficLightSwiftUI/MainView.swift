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
                    tapCount += 1
                    if tapCount == 3 {
                        tapCount = 0
                    }
                }) {
                    Text("\(buttonLabel)")
                        .frame(width: 120, height: 50)
                        .padding()
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .background(Color(.blue))
                        .cornerRadius(10)
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
