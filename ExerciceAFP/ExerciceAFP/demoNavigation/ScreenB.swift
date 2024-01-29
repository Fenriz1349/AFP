//
//  ScreenB.swift
//  ExerciceAFP
//
//  Created by apprenant51 on 29/01/2024.
//

import SwiftUI

struct ScreenB: View {
    var catParam = Cat(name: "Minou", age: 3)
    var body: some View {
        ZStack{
            Color.orange
            VStack{
                Text(catParam.name)
                Text(catParam.age.description)
            }
        }
    }
}

#Preview {
    ScreenB()
}
