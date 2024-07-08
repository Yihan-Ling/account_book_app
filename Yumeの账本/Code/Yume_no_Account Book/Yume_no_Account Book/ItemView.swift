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
                    .padding(.leading, 50)
                
                Spacer()
                
                VStack(alignment: .leading){
                    Text("奶茶")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                    
                    
                    Text("下午 2:30 · 餐饮")
                        .font(.system(size: 12))
                        .padding(.top, 2)
                }
                .padding(.trailing, 75)
                .padding(.top, 8)
                
                
                Spacer()
                
                VStack(alignment: .center){
                    Text("- 21")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                    Text("微信钱包")
                        .font(.system(size: 12))
                        .padding(.top, 1)
                }
                .padding(.trailing, 70)
                .padding(.top, 15)
            }
        }
    }
}

#Preview {
    ItemView()
}
