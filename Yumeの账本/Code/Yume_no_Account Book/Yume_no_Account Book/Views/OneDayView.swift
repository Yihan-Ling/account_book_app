//
//  OneDayView.swift
//  Yume_no_Account Book
//
//  Created by Carson Ling on 7/8/24.
//

import SwiftUI

struct OneDayView: View {
    var date: String
    
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "zh_CN")
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }
        
    private var dayOfWeek: String {
        let dateObj = dateFormatter.date(from: date) ?? Date()
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "zh_CN")
        formatter.dateFormat = "EEEE"
        return formatter.string(from: dateObj)
    }
        
    private var formattedDate: String {
        let dateObj = dateFormatter.date(from: date) ?? Date()
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "zh_CN")
        formatter.dateFormat = "M/d"
        return formatter.string(from: dateObj)
    }
    
    var body: some View {
        
        VStack {
            HStack {
                Text("\(formattedDate)")
                    .font(.system(size: 12))
                    .padding()
                            
                Text("\(dayOfWeek)")
                    .foregroundColor(.gray)
                    .font(.system(size: 12))
                    .padding(.leading, -15)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 22)
            .padding(.bottom, -20)
            
            List {
                ForEach(items.filter { $0.date == date }) { item in
                    ItemView(item: item)
                        .listRowSeparator(.hidden)
                        .padding(.vertical, -8)
                        .listRowBackground(Color("Background_Gray_1"))
                    
                }
            }
            .listStyle(PlainListStyle())
//            .scrollContentBackground(.hidden)
            
        }
        
        
    }
    
    
    
}

#Preview {
    OneDayView(date: "2024-06-07")
}
