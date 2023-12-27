//
//  NewWorkoutView.swift
//  hyp-circle
//
//  Created by Tim Casali on 12/26/23.
//

import SwiftUI

struct NewWorkoutView: View {
    var body: some View {
        VStack {
            HStack{
                VStack {
                    Button(action: {
                        print("Hello button tapped!")
                    }) {
                        Text("Apple Fitness")
                            .frame(width: 120, height: 60)
                            .fontWeight(.bold)
                            .font(.system(size: 24))
                            .foregroundColor(.black)
                        Image(systemName: "figure.run")
                            .foregroundColor(.black)
                    }.padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 3))
                    
                    Button(action: {
                        print("Hello button tapped!")
                    }) {
                        Text("Strava")
                            .frame(width: 120, height: 60)
                            .fontWeight(.bold)
                            .font(.system(size: 24))
                            .foregroundColor(.black)
                        Image(systemName: "figure.run")
                            .foregroundColor(.black)
                    }.padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 3))
                }
                VStack{
                    Button(action: {
                        print("Hello button tapped!")
                    }) {
                        Text("Nike Run Club")
                            .frame(width: 120, height: 60)
                            .fontWeight(.bold)
                            .font(.system(size: 24))
                            .foregroundColor(.black)
                        Image(systemName: "figure.run")
                            .foregroundColor(.black)
                    }.padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 3))
                    
                    Button(action: {
                        print("Enter Manually")
                    }) {
                        Text("Enter Manually")
                            .frame(width: 120, height: 60)
                            .fontWeight(.bold)
                            .font(.system(size: 24))
                            .foregroundColor(.black)
                        Image(systemName: "figure.run")
                            .foregroundColor(.black)
                    }.padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 3))
                }
            }
        }
    }
}

#Preview {
    NewWorkoutView()
}
