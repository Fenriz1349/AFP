//
//  ZStackView.swift
//  MyDemo
//
//  Created by apprenant51 on 22/01/2024.
//

import SwiftUI

struct ZStackView: View {
    var body: some View {
        ZStack{
            Color.red
                .ignoresSafeArea()
            RoundedRectangle(cornerRadius: 25)
                .fill(.green)
                .frame(width: 200, height: 150)
            Circle()
                .fill(.blue)
                .frame(width: 100, height: 100)
            Text("Santana")
        }
    }
}

#Preview {
    ZStackView()
}
