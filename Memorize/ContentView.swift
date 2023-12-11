//
//  ContentView.swift
//  Memorize
//
//  Created by Tar on 11/12/2566 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(content: {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(.white)
            RoundedRectangle(cornerRadius: 12)
                .strokeBorder(lineWidth:2)
            Text("👻").font(.largeTitle)
        })
        .foregroundStyle(.orange)
        .padding()
    }
}

#Preview {
    ContentView()
}
