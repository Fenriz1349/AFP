//
//  Lexique.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 30/01/2024.
//
//page 2 Lexique
import SwiftUI

struct Lexique: View {
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                Text("Lexique")
                    .font(.title)
                    .foregroundStyle(Color("TitleColor"))
                Text("liste des catégories, puis deroulement de chaque definition")
            }
        }.padding()
        .foregroundStyle(Color("FontColor"))
        
    }
}

#Preview {
    Lexique()
}
