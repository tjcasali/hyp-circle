//
//  HomeView.swift
//  hyp-circle
//
//  Created by Tim Casali on 12/18/23.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var viewModel: HomeViewModel

    var body: some View {
        VStack(alignment: .leading) {
            
            WorkoutHeaderView()
            
            VStack(alignment: .leading, spacing: 12) {
                Text("Clock In")
                    .foregroundColor(Color(.black))
                    .frame(alignment: .leading)
                    .padding(.leading, 24)
                    .padding(.top, 24)
                    .font(.system(size: 24))
                    .fontWeight(.bold)
            }
            
            NewWorkoutView()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.bottom, 20)
                     
            HStack(spacing: 12) {
                Text("Hype Circles")
                    .foregroundColor(Color(.black))
                    .frame(alignment: .leading)
                    .padding(.leading, 24)
                    .padding(.top, 12)
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                
                Spacer()
                
                VStack {
                    Image(systemName: "gear")
                        .font(.system(size: 24))
                        .padding(.top, 10)
                        .padding(.horizontal, 10)
                }
            }

            VStack{
                GroupFeedView()
            }
        }
    }
}

#Preview {
    HomeView()
}
