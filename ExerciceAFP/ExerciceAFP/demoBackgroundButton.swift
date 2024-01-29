//
//  demoBackgroundButton.swift
//  Exercice1
//
//  Created by apprenant51 on 25/01/2024.
//

import SwiftUI
//losque l'on clique sur un bouton on change la couleur du fond d'écran, ou on peut revenir à la couleur d'origine

struct demoBackgroundButton: View {
    @State var bckColor : Color = .white
    var body: some View {
        ZStack{
            bckColor.ignoresSafeArea()
            VStack{
                ExtButtonBckgColor(textButton: "Red", colorButton: .red, bckColor: $bckColor)
                ExtButtonBckgColor(textButton: "Green", colorButton: .green, bckColor: $bckColor)
                ExtButtonBckgColor(textButton: "Yellow", colorButton: .yellow, bckColor: $bckColor)
                }
                    .foregroundColor(bckColor == .white ? Color.white : Color.black)
            }
    }
}

#Preview {
    demoBackgroundButton()
}
//création d'une extractview pour generer un composant
// binding de bckColor de l'extract avec la state du la struc body pour les synchroniser
struct ExtButtonBckgColor : View {
    let textButton : String
    var colorButton : Color
    @Binding var bckColor : Color
    
    var body: some View {
        Button(action:{
            bckColor = bckColor == colorButton ? .white : colorButton
        },label: {
            Text(textButton)
                .frame(width: 75, height: 20)
                .padding()
                .background(colorButton)
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 3))
        })
    }
}
