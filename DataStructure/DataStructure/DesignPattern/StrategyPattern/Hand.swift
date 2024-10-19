//
//  Hand.swift
//  DataStructure
//
//  Created by lee eunsoo on 10/19/24.
//

import Foundation

enum Hand: Int, CustomStringConvertible{
    case Rock = 0
    case Scissors = 1
    case Paper = 2
    
    // 열거형을 배열로 저장하여 값을 가져오기 쉽게 함
    private static var hands: [Hand] = [.Rock, .Scissors, .Paper]
       
    private var name: String {
        switch self {
        case .Rock: return "ROCK"
        case .Scissors: return "SCISSORS"
        case .Paper: return "PAPER"
        }
    }
    
    private var handValue: Int {
        switch self {
        case .Rock: return 0
        case .Scissors: return 1
        case .Paper: return 2
        }
    }
    
    static func getHand(_ handValue: Int) -> Hand {
        return hands[handValue]
    }
    
    func isStrongerThan(_ h: Hand) -> Bool {
        return fight(h) == 1
    }
    
    func isWeakerThan(_ h: Hand) -> Bool {
        return fight(h) == -1
    }
    
    func fight(_ h: Hand) -> Int{
        if self == h {
            return 0
        }
        else if ((self.handValue + 1) % 3 == h.handValue){
            return 1
        }
        else{
            return -1
        }
    }
    
    var description: String {
        switch self {
        case .Rock: return "Rock"
        case .Scissors: return "Scissors"
        case .Paper: return "Paper"
        }
    }
}
