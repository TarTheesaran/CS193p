//
//  ContentView.swift
//  Memorize
//
//  Created by Tar on 11/12/2566 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView()
            CardView()
            CardView()
            CardView()
        }
        .foregroundStyle(.orange)
        .padding()
    }
}

struct CardView: View {
    var body: some View {
        ZStack(content: {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(.white)
            RoundedRectangle(cornerRadius: 12)
                .strokeBorder(lineWidth:2)
            Text("👻").font(.largeTitle)
        })
    }
}

#Preview {
    ContentView()
}
