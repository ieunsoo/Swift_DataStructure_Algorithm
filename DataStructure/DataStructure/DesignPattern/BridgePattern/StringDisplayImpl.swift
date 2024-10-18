//
//  StringDisplayImpl.swift
//  DataStructure
//
//  Created by lee eunsoo on 10/18/24.
//

import Foundation

class StringDisplayImpl: DisplayImpl{
    private var string: String
    private var width: Int
    
    init(_ string: String) {
        self.string = string
        self.width = string.count
    }
    
    func rawOpen() {
        printLine()
    }
    func rawPrint() {
        print("| \(string) |")
    }
    func rawClose() {
        printLine()
    }
    func printLine() {
        print("+ \(String(repeating: "-", count: width)) +")
    }
}
