//
//  ItemView.swift
//  Yume_no_Account Book
//
//  Created by Carson Ling on 7/4/24.
//

import SwiftUI

struct ItemView: View {
    var body: some View {
        
        ZStack{
            // TODO: remove background color when done
            Color("D9D9D9")
                .ignoresSafeArea()
            
            Rectangle()
                .fill(Color("FDFFFC"))
                .frame(width: 334,height: 89)
                .cornerRadius(15)
            
            HStack{
                
                // TODO: replace circle with type icon
                Circle()
                    .fill(Color.yellow)
                    .frame(width: 35,height: 35)
                VStack{
                    Text("奶茶")
                    Text("下午 2:30 · 餐饮")
                }
                VStack{
                    Text("- 21")
                    Text("微信钱包")
                }
            }
        }
    }
}

#Preview {
    ItemView()
}
