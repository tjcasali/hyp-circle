//
//  RegistrationView.swift
//  hyp-circle
//
//  Created by Tim Casali on 12/6/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var fullName = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment (\.dismiss) var dismiss
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack(spacing: 24){
                    InputView(text: $email, title: "Email Address", placeholder:"name@example.com")
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    
                    InputView(text: $fullName, title: "Full Name", placeholder:"Enter your name")
                    
                    InputView(text: $password, title: "Password", placeholder:"Enter your password", isSecureField: true)
                    
                    InputView(text: $confirmPassword, title: "Confirm Password", placeholder:"Confirm your password", isSecureField: true)
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                Button {
                    Task {
                        try await viewModel.createUser(withEmail: email,
                                                        password: password,
                                                        fullname: fullName)
                    }
                } label: {
                    HStack {
                        
                        Text("SIGN UP")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 40)
                }
                .background(Color(.systemBlue))
                .cornerRadius(10)
                .padding(.top, 24)
                
                Spacer()
                
                
                Button {
                    dismiss()
                } label: {
                    Text("Already have an account? Sign In")
                }
            }
        }
    }
}

#Preview {
    RegistrationView()
}
