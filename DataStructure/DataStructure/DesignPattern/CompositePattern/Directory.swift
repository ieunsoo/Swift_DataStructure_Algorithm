//
//  Directory.swift
//  DataStructure
//
//  Created by lee eunsoo on 10/18/24.
//

import Foundation

class Directory: Entry{
    private var name: String
    private var directory = Array<Entry>()
    
    init(_ name: String){
        self.name = name
    }
    
    override func getName() -> String {
        return name
    }
    override func getSize() -> Int {
        var size: Int = 0
        
        for i in directory{
            size = size + i.getSize()
        }
        return size
    }
    override func printList(_ prefix: String){
        print(prefix + "/" + self.name)
        for entry in directory{
            entry.printList(prefix + "/" + name)
        }
    }
    
    func add(_ entry: Entry) -> Entry{
        directory.append(entry)
        entry.setParent(self)
        return self
    }
    
    
}
