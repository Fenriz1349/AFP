//
//  demoBulb.swift
//  Exercice1
//
//  Created by apprenant51 on 23/01/2024.
//

import SwiftUI
//toggle qui "allume" ou "eteinds" l'ampoule

struct demoBulb: View {
    @State var onOff : Bool = false
    var body: some View {
        VStack{
            Image(systemName: onOff ? "lightbulb.fill" : "lightbulb")
                .font(.system(size: 500))
            Toggle("",
                   systemImage: !onOff ? "power.circle.fill" : "power.circle",
                   isOn: $onOff)
                .font(.system(size: 30))
                .fixedSize()
        }
    }
}

#Preview {
    demoBulb()
}
