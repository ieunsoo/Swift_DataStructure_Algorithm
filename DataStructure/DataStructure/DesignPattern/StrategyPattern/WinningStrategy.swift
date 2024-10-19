//
//  WinningStrategy.swift
//  DataStructure
//
//  Created by lee eunsoo on 10/19/24.
//

import Foundation

class WinningStrategy : Strategy{
    private var won : Bool = false
    private var prevHand: Hand?
    var seed: Int = 0
    
    init(_ seed: Int){
        self.seed = seed
    }
    
    func nextHand() -> Hand {
        if(!won){
            prevHand = Hand.getHand(Int.random(in: 0..<3))
        }
        return prevHand!
    }
    func study(_ win: Bool){
        won = win
    }
}
