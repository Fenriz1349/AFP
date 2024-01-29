//
//  ScreenSun.swift
//  demoScrolling
//
//  Created by apprenant51 on 29/01/2024.
//

import SwiftUI

struct ScreenWeatherChild: View {
    var weatherChild = Weather(nom: "test", emoji: "heart", couleur: .black)
    @State private var isRotating = 0.0
    
    var body: some View {
        VStack{
            Image(systemName: weatherChild.emoji)
                .rotationEffect(.degrees(isRotating))
                            .onAppear {
                                withAnimation(.linear(duration: 3)
                                        .repeatForever(autoreverses: false)) {
                                    isRotating = 360.0
                                }
                            }
            Text(weatherChild.nom)
        }.padding()
            .font(.system(size: 80))
            .foregroundStyle(weatherChild.couleur)
    }
}

#Preview {
    ScreenWeatherChild()
}
