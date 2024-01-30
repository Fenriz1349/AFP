//
//  Quizz.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 30/01/2024.
//
// page 5 Quizz
import SwiftUI

struct Quizz: View {
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                Text("Quizz")
                    .font(.title)
                    .foregroundStyle(Color("TitleColor"))
                Text("un Quizz après une leçon, puis le resultat")
            }
        }.padding()
        .foregroundStyle(Color("FontColor"))
        
    }
}

#Preview {
    Quizz()
}
