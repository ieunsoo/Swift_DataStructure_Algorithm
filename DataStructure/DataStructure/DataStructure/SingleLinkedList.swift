//
//  SingleLinkedList.swift
//  DataStructure
//
//  Created by lee eunsoo on 8/19/24.
//

import Foundation

class Node<T: Equatable>{
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


class SingleLinkedList<T: Equatable> {
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
    func removeFirst(){
        print("\(head?.value) removed")
        head = head?.next
    }
    func removeLast(){
        var cursor: Node<T>? = head
        
        while cursor?.next != nil {
            if cursor?.next?.next == nil {
                print("\(cursor?.next?.value) removed")
                cursor?.next = nil
                break
            }
            cursor = cursor?.next
        }
    }
    func remove(at: Int){}
    
    //void타입으로 하고 결과를 print하는걸로
    func find(value: T){
        var cursor: Node<T>? = head
        
        while cursor?.next != nil {
            if cursor?.next?.value == value{
                if let next = cursor?.next { print(next.value) }
            }
            cursor = cursor?.next
        }
        
        print("data not found")
        
    }
    
    func get(at: Int) -> T?{
        var cursor: Node<T>? = head
        var cnt: Int = 0
        
        
        if at >= size() {
            return nil
        }
        else{
            while cnt > at {
                if cnt == at {
                    return cursor!.value
                }
                cnt += 1
                cursor = cursor?.next
            }
            
        }
        return nil
    }
    func isEmpty() -> Bool{
        if let head = head {
            return false
        }else{
            return true
        }
    }
    func size() -> Int{
        var cursor: Node<T>? = head
        var count: Int = 0
        while cursor?.next != nil {
            count += 1
            cursor = cursor?.next
        }
        return count
    }
    func printList(){
        var cursor: Node<T>? = head
        
        while cursor?.next != nil {
            print(cursor?.value)
            cursor = cursor?.next
        }
        
        
    }
    
}


