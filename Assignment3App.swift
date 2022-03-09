//
//  Assignment3App.swift
//  Assignment3
//
//  Created by Mason Francis on 3/4/22.
//

import SwiftUI

@main
struct Assignment3App: App {
    private let game = EmojiSetGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(game: game)
        }
    }
}
