//
//  ScreenC.swift
//  ExerciceAFP
//
//  Created by apprenant51 on 29/01/2024.
//

import SwiftUI

struct ScreenC: View {
    var ownerParam = Owner(name: "", adress: "", age: 0)
    var body: some View {
        ZStack{
            Color.green
            Text("le proriétaire \(ownerParam.name) habite \(ownerParam.adress) et a \(ownerParam.age.description)")
            
        }
    }
}
#Preview {
    ScreenC()
}
