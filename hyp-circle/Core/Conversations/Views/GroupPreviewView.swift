//
//  ConversationView.swift
//  hyp-circle
//
//  Created by Tim Casali on 12/20/23.
//

import SwiftUI

struct GroupPreviewView: View {
    let title: String
    let lastMessageSent: String
    var wasAccountable = false
    let randomInt = Int.random(in: 1..<5)
    var body: some View {
        VStack(spacing: 4) {
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .fill(Color.orange)
                    .frame(width: 56, height: 56)
                    .overlay(
                        Image(systemName: "speaker.slash")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30)
                    )
                            
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text(title)
                            .font(.headline).bold()
                        
                        Text(lastMessageSent ?? "?m ago")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    if(wasAccountable) {
                        HStack {
                            Text("Message Sender: ")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            
                            Text("message contents....")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    } else {
                        HStack(alignment: .top) {
                            Text("\(randomInt) group members grinded today...")
                                .font(.subheadline)
                                .foregroundColor(.red)
                                .multilineTextAlignment(.leading)
                        }.frame(maxWidth: 250)
                    }
                }
            }
        }.padding(.vertical, 4)
    }
}

#Preview {
    GroupPreviewView(title: "Test", lastMessageSent: "?m ago")
}
