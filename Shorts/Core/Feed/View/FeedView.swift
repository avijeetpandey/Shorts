//
//  FeedView.swift
//  Shorts
//
//  Created by Avijeet on 20/03/24.
//

import SwiftUI

struct FeedView: View {
    
    @StateObject var viewModel = FeedViewModel()
    
    var body: some View {
        ScrollView {
            LazyVStack (spacing: 0) {
                ForEach(viewModel.posts) { post in
                    FeedCell(post: post)
                }
            }.scrollTargetLayout()
        }.scrollTargetBehavior(.paging)
            .ignoresSafeArea()
    }
}

#Preview {
    FeedView()
}
