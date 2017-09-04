//
//  BlackjackDeck.swift
//  Lec4
//
//  Created by hackeru on 9 Elul 5777.
//  Copyright © 5777 hackeru. All rights reserved.
//

import Foundation

struct BlackjackDeck {
    var cards:[BlackJackCard] = []
    
    init() {
        for s in 0...3{
            for r in 1...13{
                let suit = Suit(rawValue: s)!
                let rank = Rank(rawValue: r)!
                let card = BlackJackCard(rank: rank, suit: suit)
                cards.append(card)
            }
        }
        shuffle()
    }
    mutating func dealCard() -> BlackJackCard{
        return cards.removeLast()
    }
    
    mutating func shuffle(){
        for i in 0..<cards.count {
            let card = cards.remove(at: i)
            cards.insert(card, at: rand(max: cards.count))
        }
    }
}


func rand(max: Int) -> Int{
    return Int(arc4random_uniform(UInt32(max)))
}
