//
//  demoMeanSliders.swift
//  Exercice1
//
//  Created by apprenant51 on 23/01/2024.
//

import SwiftUI
//permet de selectionner 3 notes, d'afficher la moyenne.
//le fond est rouge si la moyenne est en dessous de 10, verte sinon
struct demoMeanSliders: View {
    @State var note1 : Double = 0
    @State var note2 : Double = 0
    @State var note3 : Double = 0
    var moyenne : Double {
        return (note1+note2+note3)/3
    }
    var bckColor : Color { moyenne<=10.0 ? Color.red : Color.green}
    var body: some View {
        ZStack{
            bckColor
                .ignoresSafeArea()
            VStack{
                Text("Note A : \(Int(note1))")
                Slider(value: $note1, in: 0...20,step: 1)
                Text("Note B : \(Int(note2))")
                Slider(value: $note2, in: 0...20,step: 1)
                Text("Note C : \(Int(note3))")
                Slider(value: $note3, in: 0...20,step: 1)
                Text ("Moyenne : \(moyenne, specifier: "%.1f")")
            }.padding(30)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    demoMeanSliders()
}
