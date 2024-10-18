//
//  Adapeter02.swift
//  DataStructure
//
//  Created by lee eunsoo on 10/12/24.
//
//  위임 방식의 어댑터 패턴


import Foundation


class Banner1{
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

class PrintBanner1 : Print1{
    var banner: Banner1
    
    init(string: String) {
        banner = Banner1(string: string)
    }
    
    func printWeak() {
        banner.showWithParen()
    }
    
    func printStrong() {
        banner.showWithAster()
    }
    
    
}

protocol Print1{
    func printWeak()
    func printStrong()
}

//
//var p: Print = PrintBanner(string: "Hello")
//p.printWeak()    // ( Hello )
//p.printStrong()  // * Hello *
