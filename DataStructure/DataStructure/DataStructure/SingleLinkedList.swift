//
//  SingleLinkedList.swift
//  DataStructure
//
//  Created by lee eunsoo on 8/19/24.
//

import Foundation

class Node<T> {
    let value: T?
    var next: Node?
    
    init(_ value: T) {
        self.value = value
    }
    init(){
        self.value = nil
        self.next = nil
    }
}


class SingleLinkedList<T> {
    private var head: Node<T>?
    
    func append(_ value: T) {
        let node = Node(value)
        if let head = head {
            head.next = node
        } else {
            self.head = node
        }
    }
    func insert(value: T, at: Int){
        var tmpNode = Node<T>(value)
        
        if let head = head {
            if at == 0 {
                tmpNode.next = head
                self.head = tmpNode
            }else{
                
            }
        }else{
            self.head = tmpNode
        }
        
    }
    func removeFirst(){}
    func removeLast(){}
    func remove(at: Int){}
    func find(value: T) -> Node<T>{return Node()}
    func get(at: Int) -> Node<T>{return Node()}
    func contains(value: T){}
    func isEmpty() -> Bool{
        if let head = head {
            return false
        }else{
            return true
        }
    }
    func size() -> Int{return 0}
    func reverse(){}
    func printList(){
        var cursor: Node<T>? = head
        
        //while let을 사용하는 방법 찾아보기
        
    }
    
}


