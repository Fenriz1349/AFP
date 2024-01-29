//
//  ContentView.swift
//  demoScrolling
//
//  Created by apprenant51 on 26/01/2024.
//

import SwiftUI
//ebum des jours de la semaine
enum DaysName : String,CaseIterable,Identifiable{
    var id: String { UUID().uuidString }
    
    case lundi = "Lundi"
    case mardi = "Mardi"
    case mercredi = "Mercredi"
    case jeudi = "Jeudi"
    case vendredi = "Vendredi"
    case samedi = "Samedi"
    case dimanche = "Dimanche"
}
//structure d'un jour
struct Day :Identifiable{
    var id = UUID()
    let name : DaysName
    let color : Color
}
//fonction qui créer une semaine, avec le nom du jour et sa couleur
func generateWeek() ->[Day]{
    var liste : [Day] = []
    let listeCouleur : [Color] = [.red,.black,.green,.yellow,.blue,.purple,.orange]
    var usedColor : [Color] = []
    for i in DaysName.allCases {
        var couleur = listeCouleur.randomElement()!
        while usedColor.contains(couleur) {
            couleur = listeCouleur.randomElement()!
        }
        usedColor.append(couleur)
        liste.append(Day(name: i, color: couleur))
        
    }
    return liste
}
var days = generateWeek()
struct ContentView: View {
    
    var body: some View {
        VStack {
            List(days) {element in
                HStack{
                    Image(systemName: "calendar")
                        .foregroundColor(element.color)
                    Text(element.name.rawValue)
                }.padding(5)
                .font(.title)
            }
        }
    }
}

#Preview {
    ContentView()
}
