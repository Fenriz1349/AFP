//
//  demoTextField.swift
//  Exercice1
//
//  Created by apprenant51 on 23/01/2024.
//

import SwiftUI

struct demoTextField: View {
    @State var saisie = ""
    @State var sliderValue :Double = 0
    var body: some View {
        VStack{
            TextField("Saisissez moi !", text: $saisie)
            Text(saisie == "" ? "y'a R frère" : saisie)
            Slider(value: $sliderValue, in: 0...200,step: 1)
            Text (String(Int(sliderValue)))
                .font(.system(size: sliderValue))
        }.padding()
            .font(.title)
    }
}

#Preview {
    demoTextField()
}
