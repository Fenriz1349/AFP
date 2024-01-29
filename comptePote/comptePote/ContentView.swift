//
//  ContentView.swift
//  comptePote
//
//  Created by apprenant51 on 22/01/2024.
//

import SwiftUI
import Observation

struct GrowingButtonRed: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.red)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct GrowingButtonBlue: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .scaleEffect(configuration.isPressed ? 2 : 1)
            .animation(.easeOut(duration: 0.3), value: configuration.isPressed)
    }
}

struct ContentView: View {
    
    @Observable
    class Pote{
        var name : String
        var contract : String = ""
        var compteur : Int = 0
        
        init(name: String){
            self.name = name
            self.contract = ""
        }
        init(name : String, contract : String){
            self.name = name
            self.contract = contract
        }
        init(name: String, contract: String, compteur: Int) {
            self.name = name
            self.contract = contract
            self.compteur = compteur
        }
        
        func incrementCompteur(){
            self.compteur+=1
        }
        func incrementBy(n : Int){
            self.compteur+=n
        }
        func decrementCompteur(){
            self.compteur>0 ? self.compteur-=1 : nil
        }
        func addContract(contract : String){
            self.contract = contract
            self.compteur = 1
        }
        func deleteContract(){
            self.contract = ""
            self.compteur = 0
        }
    }
    
    @State var Alex = Pote(name: "Alex", contract: "restaurant")
    @State var saisieContract : String = ""
    let bckgdColor = Color(hue: 1,
                           saturation: 0.4,
                           brightness: 0.4)
    var body: some View {
        ZStack{
            bckgdColor
                .ignoresSafeArea()
            VStack {
                Text("\(Alex.name)")
                    .font(.system(size: 50))
                Text(Alex.compteur>0 ? "me doit \(Alex.compteur) \(Alex.contract)" : "ne me doit rien")
                HStack{
                    Button("augmenter"){
                        Alex.incrementCompteur()
                        }.buttonStyle(GrowingButtonBlue())
                    Button("diminuer"){
                        Alex.decrementCompteur()
                    }.buttonStyle(GrowingButtonRed())
                        
                    }
                    HStack{
                    TextField("Ajouter un contract", text: $saisieContract)
                        .padding()
                        .foregroundStyle(.black)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                        .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.black, lineWidth: 2))
                        
                    Button("Valider"){
                        Alex.addContract(contract: saisieContract)
                        }
                    .buttonStyle(GrowingButtonBlue())
                    }
                HStack{
                    Button("Augmenter de "){
                        Alex.incrementCompteur()
                        }
                    
                    }
                Button("Effacer"){
                    Alex.deleteContract()
                }.buttonStyle(GrowingButtonRed())
                }.padding()
                .font(.title)
                .foregroundStyle(.white)
            }
            
        }
}


#Preview {
    ContentView()
}
