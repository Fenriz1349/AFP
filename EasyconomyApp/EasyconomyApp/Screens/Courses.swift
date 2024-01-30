//
//  Courses.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 30/01/2024.
//
// page 4 progression des cours
import SwiftUI

struct Courses: View {
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                Text("liste des cours")
                    .font(.title)
                    .foregroundStyle(Color("TitleColor"))
                Text("Liste des cours réussi et à faire")
            }
        }.padding()
        .foregroundStyle(Color("FontColor"))
        
    }
}
        

#Preview {
    Courses()
}
