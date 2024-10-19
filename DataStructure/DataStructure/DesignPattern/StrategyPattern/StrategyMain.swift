//
//  StrategyMain.swift
//  DataStructure
//
//  Created by lee eunsoo on 10/19/24.
//

import Foundation

@main
struct Main {
    static func main() {
        var seed1: Int = 10
        var seed2: Int = 100
        
        print("insert seed 1>> ")
        seed1 = Int(readLine()!)!
        print("insert seed 2>> ")
        seed2 = Int(readLine()!)!
        
        var player1 = Player("Taro", ProbStrategy(seed1))
        var player2 = Player("Hana", RandomStrategy(seed2))
        
        for i in 0...1000{
            var nextHand1 = player1.nextHand()
            var nextHand2 = player2.nextHand()
            
            if(nextHand1.isStrongerThan(nextHand2)){
                print("Winner: \(player1)")
                player1.win()
                player2.lose()
            }else if(nextHand2.isStrongerThan(nextHand1)){
                print("Winner: \(player2)")
                player1.lose()
                player2.win()
            }else{
                print("Even...")
                player1.even()
                player2.even()
            }
        }
        print("Total Result:\n\(player1)\n\(player2)")
    }
}
