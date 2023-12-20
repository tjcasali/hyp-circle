//
//  HomeView.swift
//  hyp-circle
//
//  Created by Tim Casali on 12/18/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello World")
                NavigationLink(destination: ProfileView()) {
                    Text("Do Something")
                }
            }
        }
    }
}
//Testing github

#Preview {
    HomeView()
}
