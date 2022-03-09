//
//  ContentView.swift
//  Assignment3
//
//  Created by Mason Francis on 3/4/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var game: EmojiSetGame
    var body: some View {
        AspectVGrid (items: game.cards, aspectRatio: 2/3) {card in
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiSetGame()
        game.choose(game.cards.first!)
        return ContentView(game: game).preferredColorScheme(.dark)
    }
}
