//
//  loadData.swift
//  Yume_no_Account Book
//
//  Created by Carson Ling on 7/8/24.
//

import Foundation

let items: [Item] = loadItems()

func loadItems() -> [Item] {
    guard let url = Bundle.main.url(forResource: "testingData", withExtension: "json") else {
        fatalError("Failed to locate testingData.json in bundle.")
    }
    
    guard let data = try? Data(contentsOf: url) else {
        fatalError("Failed to load testingData.json from bundle.")
    }
    
    let decoder = JSONDecoder()
    guard let items = try? decoder.decode([Item].self, from: data) else {
        fatalError("Failed to decode testingData.json from bundle.")
    }
    
    return items
}
