//
//  ContentView.swift
//  MyDemo
//
//  Created by apprenant51 on 22/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("My first SwiftUI app")
                .font(.title)
            Spacer()
            HStack{
                Text("Sweet")
                Image(systemName: "heart.fill")
                }.foregroundStyle(.red)
                .font(.system(size: 30))
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
