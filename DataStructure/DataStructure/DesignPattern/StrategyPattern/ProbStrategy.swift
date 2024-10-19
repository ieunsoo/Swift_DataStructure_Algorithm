//
//  ProbStrategy.swift
//  DataStructure
//
//  Created by lee eunsoo on 10/19/24.
//

import Foundation
class ProbStrategy: Strategy {
//    private var random: Int
    private var seed: Int
    
    private var prevHandValue: Int = 0
    private var currentHandValue: Int = 0
    
    private var history = [
        [1,1,1, ],
        [1,1,1, ],
        [1,1,1, ]
    ]
    
    init(_ seed: Int) {
        self.seed = seed
    }
    
    func nextHand() -> Hand {
        let bet: Int = Int.random(in: 0...getSum(prevHandValue)-1)
        var handvalue: Int = 0
        
        if (bet < history[currentHandValue][0]){
            handvalue = 0
        }else if(bet < history[currentHandValue][0] + history[currentHandValue][1]){
            handvalue = 1
        }else{
            handvalue = 2
        }
        
        prevHandValue = currentHandValue
        currentHandValue = handvalue
        return Hand.getHand(handvalue)
    }
    
    private func getSum(_ handvalue: Int) -> Int{
        var sum: Int = 0
        for i in 0..<3{
            sum += history[handvalue][i]
        }
        return sum
    }
    
    
    func study(_ win: Bool) {
        if(win){
            history[prevHandValue][currentHandValue] += 1
        }else{
            history[prevHandValue][(currentHandValue + 1) % 3] += 1
            history[prevHandValue][(currentHandValue + 2) % 3] += 1
        }
    }
}
