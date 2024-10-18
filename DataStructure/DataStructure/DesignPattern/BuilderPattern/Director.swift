//
//  Director.swift
//  DataStructure
//
//  Created by lee eunsoo on 10/17/24.
//

import Foundation

class Director {
    var builder: Builder
    
    init(_ builder: Builder) {
        self.builder = builder
    }
    
    func construct() {
        builder.makeTitle("Greeting")
        builder.makeString("일반적인 인사")
        builder.makeItems(["How are you?", "Hello.", "Hi."])
        builder.makeString("시간대별 인사")
        builder.makeItems(["Good morning.", "Good afternoon.", "Good evening."])
        builder.close()
    }
}
