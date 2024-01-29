//
//  demoLightSliders.swift
//  Exercice1
//
//  Created by apprenant51 on 25/01/2024.
//

import SwiftUI

struct demoLightSliders: View {
    @State var sliderValue : Double = 0.0
    
    var body: some View {
        VStack{
            Color(sliderValue == 0.0 ? .black : .white)
            Spacer()
                .frame(height: 150)
            Image(systemName: sliderValue != 0.0 ? "lightbulb.fill" : "lightbulb")
                .brightness(sliderValue == 0.0 ? 0 :1-sliderValue)
                .font(.system(size: 450))
            VStack{
                Slider(value: $sliderValue, in: 0...1,step: 0.1)
                Text ("light intensity : \(sliderValue*100, specifier: "%.f") %")
            }.frame(width: 200, height: 30)
            Spacer()
                .frame(height: 150)
        }.padding()
    }
}

#Preview {
    demoLightSliders()
}
