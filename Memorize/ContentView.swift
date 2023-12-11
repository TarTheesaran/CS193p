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
                .strokeBorder(lineWidth:10)
            Text("👻").font(.largeTitle)
        })
        .foregroundStyle(.orange)
        .imageScale(.small)
        .padding()
    }
}

#Preview {
    ContentView()
}
