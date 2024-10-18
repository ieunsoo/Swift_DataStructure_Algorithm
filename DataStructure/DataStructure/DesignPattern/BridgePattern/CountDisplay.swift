//
//  CountDisplay.swift
//  DataStructure
//
//  Created by lee eunsoo on 10/18/24.
//

import Foundation

class CountDisplay: Display {
    override init(_ impl: DisplayImpl) {
        super.init(impl)
    }
    
    func multiDisplay(_ times: Int){
        open()
        for i in 0...times {
            print()
        }
        close()
    }
}
