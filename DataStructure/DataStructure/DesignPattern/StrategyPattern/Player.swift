//
//  Player.swift
//  DataStructure
//
//  Created by lee eunsoo on 10/19/24.
//

import Foundation

class Player: CustomStringConvertible{
    private var name: String
    private var strategy: Strategy
    var wincount: Int = 0
    var losecount: Int = 0
    var gamecount: Int = 0
    
    init(_ name: String,_ strategy: Strategy){
        self.name = name
        self.strategy = strategy
    }
    
    func nextHand() -> Hand{
        return strategy.nextHand()
    }
    
    func win(){
        strategy.study(true)
        wincount += 1
        gamecount += 1
    }
    
    func lose(){
        strategy.study(false)
        losecount += 1
        gamecount += 1
    }
    func even(){
        gamecount += 1
    }
    
    var description: String{
        return "[\(name): \(gamecount) games, \(wincount) wins, \(losecount) lose]"
    }
}
