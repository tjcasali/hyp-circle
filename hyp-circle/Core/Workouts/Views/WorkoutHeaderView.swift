//
//  WorkoutHeaderView.swift
//  hyp-circle
//
//  Created by Tim Casali on 12/27/23.
//

import SwiftUI

struct Day {
    var id: Int
    var day: String
    var accountable: Bool
    var dayOfTheWeek: Bool
    var dayPast: Bool
}

func workoutHeaderTileColor(day: Day) -> Color {
        if day.dayOfTheWeek {
            return Color.blue
        } else if !day.dayPast {
            return Color(.lightGray)
        } else if day.accountable {
            return Color(.systemOrange)
        } else {
            return Color(.red   )
        }
    }


struct WorkoutHeaderView: View {
    @State private var weeklyProgress = [
        Day(id: 1, day: "M", accountable: true, dayOfTheWeek: false, dayPast: true),
            Day(id: 2, day: "T", accountable: true, dayOfTheWeek: false, dayPast: true),
            Day(id: 3, day: "W", accountable: true, dayOfTheWeek: false, dayPast: true),
            Day(id: 4, day: "T", accountable: false, dayOfTheWeek: false, dayPast: true),
            Day(id: 5, day: "F", accountable: false, dayOfTheWeek: true, dayPast: false),
            Day(id: 6, day: "S", accountable: true, dayOfTheWeek: false, dayPast: false),
            Day(id: 7, day: "S", accountable: false, dayOfTheWeek: false, dayPast: false)
        ]
    var body: some View {
        VStack{
            Text("Season 1: Week 51")
                .fontWeight(.semibold)
                .font(.title)
            HStack(spacing: 15) {
                ForEach(weeklyProgress, id: \.id) { day in
                    Text(day.day)
                        .frame(width: 35, height: 25)
                        .background(workoutHeaderTileColor(day: day))
                        .foregroundColor(.white)
                        .cornerRadius(5)
                }
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .top)
        .frame(height: 100)
        .overlay(
                RoundedRectangle(cornerRadius: 24)
                    .stroke(.customGray, lineWidth: 12)
            )
        .background(.customGray)
        Spacer()

    }
}

#Preview {
    WorkoutHeaderView()
}
