//
//  ItemView.swift
//  Yume_no_Account Book
//
//  Created by Carson Ling on 7/4/24.
//

import SwiftUI

struct ItemView: View {
    var item: Item
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .fill(Color("Background_White_1"))
                .frame(width: 334,height: 89)
                .cornerRadius(15)
            
            HStack{
                
                // TODO: replace circle with type icon
                Circle()
                    .fill(Color.yellow)
                    .frame(width: 35,height: 35)
                    .padding(.leading, 30)
                
                Spacer()
                
                VStack(alignment: .leading){
                    Text(item.description)
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                    
                    
                    Text("\(item.time) · \(item.category)")
                        .font(.system(size: 12))
                        .padding(.top, 2)
                }
                .padding(.trailing, 55)
                .padding(.top, 8)
                
                
                Spacer()
                
                VStack(alignment: .center){
                    Text("\(item.amount)")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                    Text(item.wallet)
                        .font(.system(size: 12))
                        .padding(.top, 1)
                }
                .padding(.trailing, 70)
                .padding(.top, 15)
            }
        }
//        .padding(.top, 0.5)
//        .padding(.bottom, 0.5)
    }
}

#Preview {
    ItemView(item: items[0])
}
