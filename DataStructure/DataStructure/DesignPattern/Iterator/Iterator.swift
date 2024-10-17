//
//  Iterator.swift
//  DataStructure
//
//  Created by lee eunsoo on 9/14/24.
//

import Foundation

// 프로토콜 정의
protocol Iterable {
    associatedtype E
    
    func iterator() -> E
}

protocol Iterator {
    associatedtype E
    
    func hasNext() -> Bool
    func next() -> E?
}

// Book 클래스
class Book {
    var name: String = ""
    
    init(name: String) {
        self.name = name
    }
    
    func getName() -> String {
        return name
    }
}

// BookShelf 클래스
class BookShelf: Iterable {
    var books: [Book]
    var last: Int = 0
    
    init() {
        books = [] 
    }
    
    func getBookAt(index: Int) -> Book {
        return books[index]
    }
    
    func appendBook(book: Book) {
        books.append(book)
        last += 1
    }
    
    func getLength() -> Int {
        return last
    }
    
    // 이터레이터 생성
    func iterator() -> BookShelfIterator {
        return BookShelfIterator(bookShelf: self)
    }
}

// BookShelfIterator 클래스
class BookShelfIterator: Iterator {
    typealias E = Book
    
    var bookShelf: BookShelf
    var index: Int = 0
    
    init(bookShelf: BookShelf) {
        self.bookShelf = bookShelf
    }
    
    func hasNext() -> Bool {
        return index < bookShelf.getLength()
    }
    
    func next() -> Book? {
        if hasNext() {
            let book = bookShelf.getBookAt(index: index)
            index += 1
            return book
        } else {
            return nil
        }
    }
}


// 테스트 코드
/*

*/

@main
struct Main {
    static func main() {
        let bookShelf = BookShelf()
        bookShelf.appendBook(book: Book(name: "Swift Programming"))
        bookShelf.appendBook(book: Book(name: "Design Patterns"))
        bookShelf.appendBook(book: Book(name: "Data Structures"))

        let it = bookShelf.iterator()
        while it.hasNext() {
            if let book = it.next() {
                print(book.getName())
            }
        }
        
    }
}
