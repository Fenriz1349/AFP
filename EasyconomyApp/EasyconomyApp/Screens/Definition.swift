//
//  Definition.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 30/01/2024.
//
// page 3 définition
import SwiftUI

struct Definition: View {
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                Text("Une definition")
                    .font(.title)
                    .foregroundStyle(Color("TitleColor"))
                Text("contenu d'une defininition qui apparaitra en modale")
            }
        }.padding()
        .foregroundStyle(Color("FontColor"))
        
    }
}


#Preview {
    Definition()
}
