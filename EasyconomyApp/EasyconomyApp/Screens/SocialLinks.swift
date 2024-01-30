//
//  SocialLinks.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 30/01/2024.
//
// page 8 reseaux sociaux
import SwiftUI

struct SocialLinks: View {
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                Text("Social")
                    .font(.title)
                    .foregroundStyle(Color("TitleColor"))
                Text("lien pour poster sur les reseaux")
            }
        }.padding()
        .foregroundStyle(Color("FontColor"))
        
    }
}

#Preview {
    SocialLinks()
}
