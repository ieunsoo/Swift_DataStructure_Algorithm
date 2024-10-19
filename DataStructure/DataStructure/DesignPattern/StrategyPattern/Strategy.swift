//
//  Strategy.swift
//  DataStructure
//
//  Created by lee eunsoo on 10/19/24.
//

import Foundation

protocol Strategy {
    func nextHand() -> Hand
    func study(_ win: Bool)
}
