//
//  weatherList.swift
//  demoScrolling
//
//  Created by apprenant51 on 26/01/2024.
//

import SwiftUI

//structure d'un jour
struct Weather: Identifiable {
    let id = UUID()
    let nom: String
    let emoji: String
    let couleur: Color
}
//liste des meteos, de l'emoji et de la couleur
var weathers = [
    Weather(nom: "sun", emoji: "sun.min", couleur: .yellow),
    Weather(nom: "clouds", emoji: "cloud", couleur: .gray),
    Weather(nom: "storm", emoji: "cloud.bolt", couleur: .black),
    Weather(nom: "moon", emoji: "moon", couleur: .blue),
    Weather(nom: "snow", emoji: "cloud.snow", couleur: .cyan),
    Weather(nom: "tornado", emoji: "tornado", couleur: .brown)
]

struct DemoWeather: View {
    var body: some View {
//        scrollview pour choisir l'axe de scroll
        ScrollView(.horizontal){
            HStack{
//                forEach pour être plus libre que List qui est uniquement vertical et sans formatage possible
                ForEach(weathers){ element in
                    HStack{
                        Image(systemName: element.emoji)
                            .foregroundColor(element.couleur)
                        Text(element.nom)
                            .foregroundColor(element.couleur)
                    }
                }
            }
        }
    }
}
#Preview {
    DemoWeather()
}
