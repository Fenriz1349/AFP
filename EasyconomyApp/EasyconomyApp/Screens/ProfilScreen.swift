//
//  ProfilScreen.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 30/01/2024.
//
// page 1 page utilisateur / écran d'atterissage
import SwiftUI

struct ProfilScreen: View {
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                Text("Ecran d'atterissage / Profil")
                    .font(.title)
                    .foregroundStyle(Color("TitleColor"))
                Text("écran de progression general, et d'atterissage")
            }
        }.padding()
            .foregroundStyle(Color("FontColor"))
    }
}

#Preview {
    ProfilScreen()
}
