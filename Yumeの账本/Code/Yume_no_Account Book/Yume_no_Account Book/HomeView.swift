//
//  ContentView.swift
//  Yume_no_Account Book
//
//  Created by Carson Ling on 6/25/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            Color("D9D9D9")
                .ignoresSafeArea()
            
            VStack{
                // Spending and Income HStack
                HStack{
                    SpendingSumView()
                        .padding(.leading, 35)
                    Spacer()
                    IncomeSumView()
                        .padding(.trailing, 35)
                    
                }
                
            }
            
            
            
        }
    }
}

#Preview {
    HomeView()
}
