//
//  Main.swift
//  DataStructure
//
//  Created by lee eunsoo on 10/17/24.
//

import Foundation

@main
struct Main {
    static func main() {
        print("출력하고자 하는 형태를 입력하세요(text or html): ")
        let input = readLine() ?? ""
        print(input)
        
        if (input == "text") {
            let textbuilder: TextBuilder = TextBuilder();
            print(textbuilder.getTextResult());
            let director: Director = Director(textbuilder);
            director.construct();
            let result: String = textbuilder.getTextResult();
            print(result);
        } else if (input == "html") {
            let htmlbuilder: HTMLBuilder = HTMLBuilder();
            let director: Director = Director(htmlbuilder);
            director.construct();
            let filename: String = htmlbuilder.getHTMLResult();
            print("HTML파일 \(filename)이 작성되었습니다.");
        } else {
            //만약 args[]에 아무 데이터가 없을 경우 안내 문구를 출력
            usage();
            
        }
    }
    static func usage() {
        print("Usage: java Main text       텍스트로 문서 작성");
        print("Usage: java Main html       HTML 파일로 문서 작성");
    }
}
