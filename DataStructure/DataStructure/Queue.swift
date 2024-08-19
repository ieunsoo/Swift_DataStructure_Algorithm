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

struct Queue2<T>{
    var queue:[T?] = []
    var head:Int = 0
    
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
        guard head < queue.count, let element = queue[head] else { return nil }
        queue[head] = nil
        head += 1
        
        if head > 50 {
            queue.removeFirst(head)
            head = 0
        }
        return element
    }
    
}

