//
//  File.swift
//  DataStructure
//
//  Created by lee eunsoo on 10/18/24.
//

import Foundation

class File: Entry {
    private var name: String
    private var size: Int
    
    init(_ name: String,_ size: Int) {
        self.name = name
        self.size = size
    }
    
    override func getName() -> String {
        return name
    }
    
    override func getSize() -> Int {
        return size
    }
    
    override func printList(_ prefix: String) {
        print(prefix + "/" + self.name)
    }
}
