//
//  IncomeSumView.swift
//  Yume_no_Account Book
//
//  Created by Carson Ling on 6/26/24.
//

import SwiftUI

struct IncomeSumView: View {
    
    var body: some View {
        @State var income = 1058.0
        ZStack{
            Rectangle()
                .fill(Color("FDFFFC"))
                .frame(width: 143,height: 72)
                .cornerRadius(15)
            VStack{
                Text(String(format: "%.2f", income))
                    .font(.custom("Inter-Regular", size: 24))
                    .foregroundColor(Color("578BB2"))
                Text("收入")
                    .font(.custom("Inter-Regular", size: 12))
            }
            
            
        }
        
        
        
            
    }
}

#Preview {
    IncomeSumView()
}
