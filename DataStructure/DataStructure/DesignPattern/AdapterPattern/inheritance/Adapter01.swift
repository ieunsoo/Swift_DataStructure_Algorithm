//
//  Adapter01.swift
//  DataStructure
//
//  Created by lee eunsoo on 9/26/24.
//

class Banner{
    var string: String
    
    init(string: String) {
        self.string = string
    }
    
    func showWithParen(){
        print("( \(self.string) )")
    }
    func showWithAster(){
        print("* \(self.string) *")
        
    }
}

class PrintBanner : Banner, Print{
    
    override init(string: String) {
        super.init(string: string)
    }
    
    func printWeak() {
        showWithParen()
    }
    
    func printStrong() {
        showWithAster()
    }
    
    
}

protocol Print{
    func printWeak()
    func printStrong()
}


//var p: Print = PrintBanner(string: "Hello")
//p.printWeak()    // ( Hello )
//p.printStrong()  // * Hello *

