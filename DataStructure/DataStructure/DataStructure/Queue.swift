//
//  Queue.swift
//  DataStructure
//
//  Created by lee eunsoo on 8/19/24.
//

import Foundation

//가장 간단한 queue
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


//head를 이용항 큐를 만들고 메모리 오버헤드 줄이기
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

//원형 큐, 추가 확장을 지원하지 않는다, 생성당시의 크기를 유지한다.
class circularQueue<T>{
    var front:T
    var rear:T
    let MAXQ_SIZE:Int
    var cQueue:[T]?
    
    init(front: T, rear: T, MAXQ_SIZE: Int) {
        self.front = front
        self.rear = rear
        self.MAXQ_SIZE = MAXQ_SIZE
//        self.cQueue = [T](repeating: nil, count: self.MAXQ_SIZE)
        
    }
    
}
