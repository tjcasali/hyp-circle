//
//  hyp_circleApp.swift
//  hyp-circle
//
//  Created by Tim Casali on 12/6/23.
//

import SwiftUI
import SwiftData
import Firebase

@main
struct hyp_circleApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
