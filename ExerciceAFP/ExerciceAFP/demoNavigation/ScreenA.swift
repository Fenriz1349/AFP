//
//  ScreenA.swift
//  Exercice1
//
//  Created by apprenant51 on 29/01/2024.
//

import SwiftUI

struct Cat {
    let name : String
    var age : Int
}
struct Owner {
    let name : String
    var adress : String
    var age : Int
}
struct ScreenA: View {
    var body: some View {
//        chaque lien de navigation permet de changer l'affichage des pages de destination
        NavigationStack{
            NavigationLink(destination: ScreenB(catParam : Cat(
                name :"Batman",age:4)), label: {
                Text("Go to Screen B")
            })
           NavigationLink(destination: ScreenC(ownerParam : Owner(name: "Fen", adress: "chez lui même", age: 35)), label: {
               Text("Go to Screen C")
           })
        }
    }
}

#Preview {
    ScreenA()
}
