//
//  FactoryMethod.swift
//  DataStructure
//
//  Created by lee eunsoo on 10/8/24.
//

import Foundation

// Product 프로토콜 정의
//CustomStringConvertible: java의 toString()을 대체 하기 위해 print할때 문자열을 수정할 수 있게 해주는 프로토콜
protocol Product: CustomStringConvertible {
    func use()
}

// Factory 프로토콜 정의
protocol Factory {
    func createProduct(owner: String) -> Product
    func registerProduct(product: Product)
}

// Factory 프로토콜 확장, 기본 구현 메소드인 create를 위해서 확장을 사용함
extension Factory {
    func create(owner: String) -> Product {
        let product = createProduct(owner: owner)
        registerProduct(product: product)
        return product
    }
}

// IDCard 클래스
class IDCard: Product {
    private let owner: String
    
    init(owner: String) {
        self.owner = owner
        print("\(owner)의 카드를 만듭니다.")
    }
    
    func use() {
        // self를 사용하여 출력
        print("\(self) 을 사용합니다.")
    }
    
    // CustomStringConvertible을 사용하여 self를 출력
    var description: String {
        return "[IDCard: \(owner)]"
    }
    
    func getOwner() -> String {
        return owner
    }
}

// IDCardFactory 클래스
class IDCardFactory: Factory {
    
    func createProduct(owner: String) -> Product {
        return IDCard(owner: owner)
    }
    
    func registerProduct(product: Product) {
        // self를 사용하여 출력
        print("\(product) 을 등록했습니다.")
    }
}
/*
// 메인 실행
let factory = IDCardFactory()

let card1 = factory.create(owner: "Youngjin Kim")
let card2 = factory.create(owner: "Heungmin Son")
let card3 = factory.create(owner: "Kane")

card1.use()
card2.use()
card3.use()
*/
