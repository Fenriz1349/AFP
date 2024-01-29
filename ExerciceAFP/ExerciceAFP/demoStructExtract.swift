//
//  SwiftUIView.swift
//  Exercice1
//
//  Created by apprenant51 on 29/01/2024.
//

import SwiftUI
//afficher plusieurs fois le même texte et image avec la même couleur et la même typo
struct demoStructExtract: View {
    var body: some View {
        VStack{
            ExtStack(text: "Hello, World !", picto: "heart.fill")
            ExtStack(text: "Hello, Aurelien", picto: "pencil")
            ExtStack(text: "Hello, Batman !", picto: "heart.fill",color:.black)
        }
    }
}

#Preview {
    demoStructExtract()
}
//création d'une extractview pour generer un composant
struct ExtStack : View {
    let text : String
    let picto : String
    var color : Color = .red
    var body: some View {
        HStack{
            Text(text)
                .foregroundStyle(.green)
            Image(systemName: picto)
                .foregroundStyle(color)
        }
        .font(.system(size: 30))
    }
}
