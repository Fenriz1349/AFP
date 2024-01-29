//
//  DemoContact.swift
//  demoScrolling
//
//  Created by apprenant51 on 26/01/2024.
//

import SwiftUI
import Observation

struct Adress {
    let num : Int
    let rue : String
    let ville : String
    
}
@Observable
class Contact {
    let nom : String
    let prenom : String
    var age : Int
    let adresse : Adress
    
    init(nom: String, prenom: String, age: Int, adresse: Adress) {
        self.nom = nom
        self.prenom = prenom
        self.age = age
        self.adresse = adresse
    }

}
let contact1 = Contact(nom: "Dupont", prenom: "Robert", age: 34, adresse: adresse1)
let adresse1 = Adress(num: 10, rue: "Boustifaille", ville: "Paris")
struct DemoContact: View {
    var body: some View {
        Text("\(contact1.prenom) \(contact1.nom) qui à \(contact1.age) ans")
        Text("habite \(contact1.adresse.num) rue de la\(contact1.adresse.rue) à \(contact1.adresse.ville)")
        Button("ajouter"){
            contact1.age+=1
        }
    }
}

#Preview {
    DemoContact()
}
