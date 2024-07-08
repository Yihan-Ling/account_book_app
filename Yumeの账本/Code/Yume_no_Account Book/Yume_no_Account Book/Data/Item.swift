//
//  Item.swift
//  Yume_no_Account Book
//
//  Created by Carson Ling on 7/8/24.
//

import Foundation

struct Item: Hashable, Codable, Identifiable{
    var id: String
    var isSpending: Bool
    var category: String
    var description: String
    var date: String
    var time: String
    var amount: Int
    var currency: String
    var wallet: String
}
