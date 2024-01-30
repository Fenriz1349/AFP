//
//  Settings.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 30/01/2024.
//
// page 7 ecran de paramètres
import SwiftUI

struct Settings: View {
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                Text("parametre utilisateur")
                    .font(.title)
                    .foregroundStyle(Color("TitleColor"))
                Text("parametres généraux et changement du compte")
            }
        }.padding()
        .foregroundStyle(Color("FontColor"))
        
    }
}

#Preview {
    Settings()
}
