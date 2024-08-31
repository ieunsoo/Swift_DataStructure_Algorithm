//
//  Stack.swift
//  DataStructure
//
//  Created by lee eunsoo on 8/19/24.
//

import Foundation

protocol Stackable{
    //stack에 필요한 변수나 함수들 정의
}

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



//괄호검사 함수 만들기 문자열에 { [ ( 이 들어오면 stack에 push하고 닫히는 괄호가 들어오면 pop, 마지막까지 괄호가 남아있으면 오류
