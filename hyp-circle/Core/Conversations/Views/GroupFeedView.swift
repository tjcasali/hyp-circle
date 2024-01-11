//
//  ConversationListView.swift
//  hyp-circle
//
//  Created by Tim Casali on 12/20/23.
//

import SwiftUI

struct GroupFeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                GroupPreviewView(title: "Dumper Talk", lastMessageSent: "30s ago")
                GroupPreviewView(title: "Fit Losers", lastMessageSent: "5m ago")
                GroupPreviewView(title: "Cody's Run Club", lastMessageSent: "2h ago")
            }
        }
    }
}

#Preview {
    GroupFeedView()
}
