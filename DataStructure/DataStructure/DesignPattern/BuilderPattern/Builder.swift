//
//  Builder.swift
//  DataStructure
//
//  Created by lee eunsoo on 10/17/24.
//

import Foundation

protocol Builder {
    func makeTitle(_ title: String)
    func makeString(_ str: String)
    func makeItems(_ items: [String])
    func close()
}
