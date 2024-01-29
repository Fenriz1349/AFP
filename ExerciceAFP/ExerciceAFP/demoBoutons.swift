//
//  demoBoutons.swift
//  Exercice1
//
//  Created by apprenant51 on 23/01/2024.
//

import SwiftUI
//app qui permet d'incrementer ou decrement un compteur et de l'afficher,il ne va pas en dessous de 0
struct demoBoutons: View {
    @State var compteur :Int = 0
    @State var back :Bool = false
    var body: some View {
        ZStack{
            back ? Rectangle():nil
            VStack{
                Text(String(compteur))
                    .foregroundStyle(.red)
                    .font(.system(size: 200))
                HStack{
                    Button("Augmenter"){
                        compteur+=1
                        back=false
                    }
                    Button("Diminuer"){
                        if compteur>1  {
                            compteur-=1
                            back=false}
                        else if compteur == 1 {
                            compteur-=1
                            back=true}
                    }
                }.font(.system(size: 24))
            }
        }
        }
    }


#Preview {
    demoBoutons()
}
