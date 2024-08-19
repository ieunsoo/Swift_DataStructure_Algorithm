//
//  Queue.swift
//  DataStructure
//
//  Created by lee eunsoo on 8/19/24.
//

import Foundation

struct Queue<T>{
    var queue:[T] = []
    
    var isEmpty: Bool{
        return queue.isEmpty
    }
    var count: Int{
        return queue.count
    }
    
    public mutating func enQueue(_ data: T){
        queue.append(data)
    }
    
    public mutating func deQueue() -> T?{
        var tmp:T? = queue.first
        queue.removeFirst()
        
        return queue.isEmpty ? nil : tmp
    }
}
