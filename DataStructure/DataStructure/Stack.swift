//
//  Stack.swift
//  DataStructure
//
//  Created by lee eunsoo on 8/19/24.
//

import Foundation

struct Stack<T>{
    var stack:[T] = []
    
    public var count: Int {
        return stack.count
    }
    
    public var isEmpty: Bool{
        return stack.isEmpty
    }
    
    public mutating func push(_ data: T){
        stack.append(data)
    }
    
    //pop하는 값이 없을 수 도 있음, 옵셔널 타입으로 반환
    public mutating func pop() -> T?{
        return isEmpty ? nil : stack.popLast()
    }
    
}
