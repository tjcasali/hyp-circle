//
//  ProfileView.swift
//  hyp-circle
//
//  Created by Tim Casali on 12/6/23.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        let user = viewModel.currentUser
        VStack (alignment: .leading, spacing: 4) {
            Text(user?.fullName ?? "")
                .font (.subheadline)
                .fontWeight(.semibold)
                .padding(.top, 4)
            Text(user?.email ?? "")
                .font (.footnote)
                .foregroundColor(.gray)
            
            Button {
                viewModel.signOut()
            } label: {
                SettingsRowView(imageName: "arrow.left.circle.fill",
                                title: "Sign Out",
                                tintColor: .red)
            }
            
            Button {
                print("Delete account..")
            } label: {
                SettingsRowView(imageName: "xmark.circle.fill",
                                title: "Delete Account",
                                tintColor: .red)
            }
        }
    }
}

#Preview {
    ProfileView()
        .environmentObject(AuthViewModel())
}
