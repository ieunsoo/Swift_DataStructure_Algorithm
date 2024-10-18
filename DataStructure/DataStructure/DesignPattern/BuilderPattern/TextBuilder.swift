//
//  TextBuilder.swift
//  DataStructure
//
//  Created by lee eunsoo on 10/17/24.
//

import Foundation

class TextBuilder : Builder{
    //swift에서는 StringBuilder를 사용안해도 일반 String이 java의 StringBuilder처럼 동작함
    private var sb: String = ""
    
    init(){
        
    }
    
    func makeTitle(_ title: String) {
        sb.append("=======================\n")
        sb.append("[ \(title) ]\n\n")
    }
    func makeString(_ str: String) {
        sb.append(" ■ \(str)\n\n")
    }
    func makeItems(_ items: [String]) {
        for s in items {
            sb.append(" - ");
            sb.append(s);
            sb.append("\n");
        }
        sb.append("\n");
    }
    
    func close() {
        sb.append("==============================\n")
    }
    func getTextResult() -> String {
        return sb
    }
}
