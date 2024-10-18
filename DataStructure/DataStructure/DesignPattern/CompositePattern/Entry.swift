//
//  Entry.swift
//  DataStructure
//
//  Created by lee eunsoo on 10/18/24.
//

import Foundation


class Entry: CustomStringConvertible{
    private var parent: Entry?
    
    init(){}
    
    func getName() -> String{return ""}
    func getSize() -> Int{return 0}
    func printList(_ prefix: String){}
    
    func setParent(_ parent: Entry){
        self.parent = parent
    }
    func printList(){
        printList("")
    }
    
    //toString
    var description: String {
        return "\(getName()) (\(getSize()))"
    }
    
    func getFullName() -> String{
        var tempStr: String = ""
        var tmpEntry: Entry? = self
        repeat {
            if let e = tmpEntry {
                tempStr = "/" + e.getName() + tempStr
                tmpEntry = e.parent
            }
        } while tmpEntry != nil
        return tempStr
    }
}
