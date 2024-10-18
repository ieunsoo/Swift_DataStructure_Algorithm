//
//  Display.swift
//  DataStructure
//
//  Created by lee eunsoo on 10/18/24.
//

import Foundation

class Display{
    private var impl: DisplayImpl
    
    init(_ impl: DisplayImpl){
        self.impl = impl
    }
    
    func open(){
        impl.rawOpen()
    }
    func print(){
        impl.rawPrint()
    }
    func close(){
        impl.rawClose()
    }
    final func display(){
        open()
        print()
        close()
    }
}
