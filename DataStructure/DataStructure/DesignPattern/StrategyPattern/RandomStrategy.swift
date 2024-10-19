//
//  RandomStrategy.swift
//  DataStructure
//
//  Created by lee eunsoo on 10/19/24.
//

import Foundation

class RandomStrategy: Strategy {
    private let seed: Int
    
    init(_ seed: Int) {
        self.seed = seed
    }
    
    func study(_ win: Bool) {
    }
    func nextHand() -> Hand {
        return Hand.getHand(Int.random(in: 0..<3))
    }
}
