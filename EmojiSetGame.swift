//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Mason Francis on 1/28/22.
//

import SwiftUI

func makeCardContent(index: Int) -> String {
    return "💩"
}

class EmojiSetGame: ObservableObject {
    typealias Card = SetGame<String>.Card
    
    private static let emojis = ["💩", "🌚", "🔥", "🍕", "😡", "🦨", "🦀"]
    
    private static func createMemoryGame() -> SetGame<String> {
        SetGame<String>(numberofPairsOfCards: 4) { pairIndex in
            EmojiSetGame.emojis[pairIndex]
    
        }
    }
    
    
    @Published private var model: SetGame<String> = EmojiSetGame.createMemoryGame()
        
    
    var cards: Array<Card> {
        return model.cards
    }
    
    // MARK: -Intent(s)
    
    func choose(_ card: SetGame<String>.Card){
        model.choose(card: card)
    }
}
