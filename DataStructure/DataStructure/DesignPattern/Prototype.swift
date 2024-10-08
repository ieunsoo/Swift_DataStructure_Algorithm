//
//  Prototype.swift
//  DataStructure
//
//  Created by lee eunsoo on 10/8/24.
//

import Foundation

protocol Product1 {
    func use(_ s: String)
    func createCopy() -> Product1
}

class Manager {
    private var showcases = Dictionary<String, Product1>()
    
    func registaer(_ name:String, _ prototype: Product1) {
        showcases[name] = prototype
    }
    
    func create(_ prototypeName: String) -> Product1 {
        var p: Product1 = showcases[prototypeName]!
        return p.createCopy()
    }
}

class MessageBox: Product1 {
    private var decochar: Character
    
    init(decochar: Character) {
        self.decochar = decochar
    }
    
    func use(_ s: String) {
        var decolen = 1 + s.count + 1;
        for i in 0..<decolen {
            print(decochar, terminator: "")
        }
        print()
        print(decochar, s, decochar)
        for i in 0..<decolen {
            print(decochar, terminator: "")
        }
        print()
    }
    
    func createCopy() -> Product1 {
        var p: Product1
        p = self as Product1
        
        return p
    }
}

class UnderlinePen: Product1 {
    private var ulcochar: Character
    
    init(ulchar: Character) {
        self.ulcochar = ulchar
    }
    
    func use(_ s: String) {
        var ulen = s.count
        print(s)
        for i in 0...ulen {
            print(ulcochar, terminator: "")
        }
        print()
    }
    
    func createCopy() -> Product1{
        var p: Product1
        p = self as Product1
        
        return p
    }
}

/*
 
 var manager:Manager = Manager()

 var upen: UnderlinePen = UnderlinePen(ulchar: "-")
 var mbox: MessageBox = MessageBox(decochar: "*")
 var sbox: MessageBox = MessageBox(decochar: "/")

 manager.registaer("strong message", upen)
 manager.registaer("warning box", mbox)
 manager.registaer("slash box", sbox)

 var p1: Product = manager.create("strong message")
 p1.use("Hello, World!")

 var p2: Product = manager.create("warning box")
 p2.use("Hello, World!")

 var p3: Product = manager.create("slash box")
 p3.use("Hello, World!")

 */
