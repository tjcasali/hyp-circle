//
//  MainTabView.swift
//  hyp-circle
//
//  Created by Tim Casali on 12/26/23.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            HomeView()
                .onTapGesture {
                    self.selectedIndex = 0
                }.tabItem {
                    Image(systemName: "house")
                }.tag(0)
            
            HomeView()
                .onTapGesture {
                    self.selectedIndex = 1
                }.tabItem {
                    Image(systemName: "message")
                }.tag(1)
            
            HomeView()
                .onTapGesture {
                    self.selectedIndex = 2
                }.tabItem {
                    Image(systemName: "figure.strengthtraining.traditional")
                }.tag(2)
        
            ProfileView()
                .onTapGesture {
                    self.selectedIndex = 3
                }.tabItem {
                    Image(systemName: "person")
                }.tag(3)
        }
    }
}

#Preview {
    MainTabView()
        .environmentObject(AuthViewModel())
}
