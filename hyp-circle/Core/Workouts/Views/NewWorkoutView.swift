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
                            .frame(width: 120, height: 40)
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                            .minimumScaleFactor(0.7)
                        
                        Image(systemName: "figure.run")
                            .foregroundColor(.black)
                            .font(.system(size: 24))
                    }.padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 3))
                    
                    Button(action: {
                        print("Hello button tapped!")
                    }) {
                        Text("Strava")
                            .frame(width: 120, height: 40)
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                            .minimumScaleFactor(0.7)
                        
                        Image(systemName: "figure.run")
                            .foregroundColor(.black)
                            .font(.system(size: 24))
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
                            .frame(width: 120, height: 40)
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                            .minimumScaleFactor(0.7)
                        
                        Image(systemName: "figure.run")
                            .foregroundColor(.black)
                            .font(.system(size: 24))
                    }.padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 3))
                    
                    Button(action: {
                        print("Enter Manually")
                    }) {
                        Text("Enter Manually")
                            .frame(width: 120, height: 40)
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                            .minimumScaleFactor(0.7)
                        
                        Image(systemName: "figure.run")
                            .foregroundColor(.black)
                            .font(.system(size: 24))
                    }.padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 3))
                }
            }
            Button(action: {
                print("Hello button tapped!")
            }) {
                Text("Use Rest Day: 2 Remaining")
                    .foregroundColor(Color.black)
            }.padding(.top, 2)
        }
    }
}

#Preview {
    NewWorkoutView()
}
