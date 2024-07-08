//
//  OneDayView.swift
//  Yume_no_Account Book
//
//  Created by Carson Ling on 7/8/24.
//

import SwiftUI

struct OneDayView: View {
    var date: String
    var body: some View {
        
        VStack {
            Text("Items for \(date)")
                .font(. system(size: 12))
                .padding()

            List {
                ForEach(items.filter { $0.date == date }) { item in
                    ItemView(item: item)
                        .listRowSeparator(.hidden)
                        .padding(.vertical, -8)
                }
            }
            .listStyle(PlainListStyle()) 
        }
    }
}

#Preview {
    OneDayView(date: "2024-06-07")
}
