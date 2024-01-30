//
//  Leaderboard.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 30/01/2024.
//
// page 6 Leaderbard
import SwiftUI

struct Leaderboard: View {
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                Text("Leaderboard amis/ mondial")
                    .font(.title)
                    .foregroundStyle(Color("TitleColor"))
                Text("Leaderbord des amis,mondial, et classement général")
            }
        }.padding()
        .foregroundStyle(Color("FontColor"))
        
    }
}
#Preview {
    Leaderboard()
}
