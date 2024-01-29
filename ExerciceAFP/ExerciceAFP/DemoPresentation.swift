//
//  ContentView.swift
//  ExerciceAFP
//
//  Created by apprenant51 on 29/01/2024.
//

import SwiftUI

struct DemoPresentation: View {
    // Votre premier exercice consiste à vous présenter
    // Utiliser des variables ou des constantes pour donner vos infos (nom, prénom, age, ville, hobby)
    // Précisez le type pour chacune de vos valeurs
    // Vous pouvez mettre une photo de profile -> pro tips: utiliser .resizable() pour changer sa taille
    // Pour ajouter une photo vous devez la placer dans le dossier Assets.
    let name :String = "Cotte"
    let firstName :String = "Julien"
    var age :Int = 35
    var city :String = "Lille"
    var hobby :String = "Crypto"
    
    var dictionnaryPerso :[String:String] =
        ["name": "Cotte",
         "firstName" :"Julien",
         "age":"35",
         "ville":"Lille",
         "hobby":"CryptoBro"]
    let bckgdColor = Color(hue: 1,
                           saturation: 0.5,
                           brightness: 0.4)
    var body: some View {
        ZStack{
            bckgdColor
                .ignoresSafeArea()
            VStack {
                Image("photoProfil")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200,height: 150)
                Text("Bonjour je m'appelle \(dictionnaryPerso["firstName"]!) et j'ai \(String(age)) ans, j'habite à \(city) et je suis fan de \(hobby)")
                    .background(Color.gray)
            }.padding()
            .overlay(RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.black, lineWidth: 5))
    }
    }
}

#Preview {
    DemoPresentation()
}
