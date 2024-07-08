//
//  SpendingSumView.swift
//  Yume_no_Account Book
//
//  Created by Carson Ling on 6/27/24.
//

import SwiftUI



struct SpendingSumView: View {
    var body: some View {
        @State var spending = 640.2
        ZStack{
            Rectangle()
                .fill(Color("FDFFFC"))
                .frame(width: 143,height: 72)
                .cornerRadius(15)
            VStack{
                Text(String(format: "%.2f", spending))
                    .font(.system(size: 24))
                    .foregroundColor(Color("FD5249"))
                
                Text("支出")
                    .font(.system(size: 12))
            }
            
            
        }
        
            
    }
}

#Preview {
    SpendingSumView()
}
