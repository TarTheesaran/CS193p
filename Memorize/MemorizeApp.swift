//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Tar on 11/12/2566 BE.
//

import SwiftUI

@main
struct MemorizeApp: App {
    @StateObject var game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
