//
//  ContentView.swift
//  Yume_no_Account Book
//
//  Created by Carson Ling on 6/25/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("D9D9D9")
                    .ignoresSafeArea()
                
                VStack{
                    HStack{
                        // Settings Button
                        NavigationLink(destination: SettingsView()) {
                            Image(systemName: "gearshape.fill")
                                .font(.system(size: 24))
                                .foregroundColor(.black)
                                .padding(.leading, 35)
                        }
                        
                        Spacer()
                        
                        //Search Button
                        NavigationLink(destination: SearchView()) {
                            Image(systemName: "magnifyingglass")
                                .font(.system(size: 24))
                                .foregroundColor(.black)
                                .padding(.trailing, 35)
                        }
                        
                    }
                    
                    /*
                    TODO: remove comment on this spacer when added more details
                     
                    Spacer()
                     */
                    
                    // Spending and Income HStack
                    HStack{
                        SpendingSumView()
                            .padding(.leading, 35)
                        Spacer()
                        IncomeSumView()
                            .padding(.trailing, 35)
                        
                    }
                    OneDayView(date: "2024-06-07")
                    
                }
        }
        
            
            
            
        }
    }
}

#Preview {
    HomeView()
}
