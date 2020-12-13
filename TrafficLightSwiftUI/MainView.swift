//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Alexander Pismenskiy on 10.12.2020.
//

import SwiftUI

struct MainView: View {

    @State private var buttonLabel = "Start"
    @State private var tapCount = -1
    @State private var buttonImage = ""

    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 20) {
                ColorLight(color: .red, opacity: tapCount == 0 ? 1 : 0.3)
                ColorLight(color: .yellow, opacity: tapCount == 1 ? 1 : 0.3)
                ColorLight(color: .green, opacity: tapCount == 2 ? 1 : 0.3)
                
                Spacer()
                
                StartButton(buttonLabel: buttonLabel, action: changeOpacity)
                }
            }
        }
    
    func changeOpacity() {
        buttonLabel = "Next"
        tapCount += 1
        if tapCount == 3 {
            tapCount = 0
        }
    }



    struct MainView_Previews: PreviewProvider {
        static var previews: some View {
            MainView()
        }
    }
}
