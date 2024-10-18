//
//  HTMLBuilder.swift
//  DataStructure
//
//  Created by lee eunsoo on 10/17/24.
//

import Foundation

class HTMLBuilder: Builder {
    private var filename: String = "untitled.html"
    private var sb: String = ""
    
    func makeTitle(_ title: String) {
        filename = title + ".html"
        sb.append("<!DOCTYPE html>\n")
        sb.append("<html>\n")
        sb.append("<head><title>")
        sb.append(title)
        sb.append("</title></head>\n")
        sb.append("<body>\n")
        sb.append("<h1>")
        sb.append(title)
        sb.append("</h1>\n\n")
    }
    
    func makeString(_ str: String) {
        sb.append("<p>")
        sb.append(str)
        sb.append("</p>\n\n")
    }
    
    func makeItems(_ items: [String]) {
        sb.append("<ul>\n")
        for s in items {
            sb.append("<li>")
            sb.append(s)
            sb.append("</li>\n")
        }
        sb.append("</ul>\n\n")
    }
    func close() {
        sb.append("</body>")
        sb.append("</html>\n")
        //파일 출력
        
        // 파일 이름과 경로 지정 (여기서는 Document 디렉토리에 저장)
        
        if let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            let fileURL = documentDirectory.appendingPathComponent(filename)
            
            do {
                // 문자열을 데이터로 변환
                try sb.write(to: fileURL, atomically: true, encoding: .utf8)
                print("File successfully written to: \(fileURL.path)")
            } catch {
                print("Failed to write to file: \(error.localizedDescription)")
            }
        }
    }
    
    func getHTMLResult() -> String {
        return filename
    }
}
