//
//  TEst.swift
//  demoScrolling
//
//  Created by apprenant51 on 07/02/2024.
//

import SwiftUI

struct TEst: View {
    @State private var addToCart : Int = 0
    var body: some View {
        VStack{
            Text("\(addToCart) ajoouté")
            Button {
                addToCart+=1
            }label: {
                Image(systemName: "heart")
                Text("test")
            }
        }
    }
}

#Preview {
    TEst()
}
