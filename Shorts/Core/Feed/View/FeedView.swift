//
//  FeedView.swift
//  Shorts
//
//  Created by Avijeet on 20/03/24.
//

import SwiftUI
import AVKit

struct FeedView: View {
    
    @StateObject var viewModel = FeedViewModel()
    @State private var scrollPosition: String?
    @State private var player = AVPlayer()
    
    var body: some View {
        ScrollView {
            LazyVStack (spacing: 0) {
                ForEach(viewModel.posts) { post in
                    FeedCell(post: post,player: player)
                        .id(post.id)
                        .onAppear {
                            playInitialVideoIfNecessary()
                        }
                }
            }.scrollTargetLayout()
        }.scrollTargetBehavior(.paging)
            .onAppear {
                player.play()
            }
            .ignoresSafeArea()
            .scrollPosition(id: $scrollPosition)
            .onChange(of: scrollPosition) { oldvalue, newValue in
                playVideoOnChangeOfPosition(postId: newValue)
            }
    }
    
    func playInitialVideoIfNecessary() {
        guard scrollPosition == nil,
              let post = viewModel.posts.first,
              player.currentItem == nil  else { return }
        
        let playerItem = AVPlayerItem(url: URL(string: post.videoUrl)!)
        player.replaceCurrentItem(with: playerItem)
    }
    
    func playVideoOnChangeOfPosition(postId: String?) {
        guard let currentPost = viewModel.posts.first(where: {$0.id == postId}) else { return }
        player.replaceCurrentItem(with: nil)
        let playerItem = AVPlayerItem(url: URL(string: currentPost.videoUrl)!)
        player.replaceCurrentItem(with: playerItem)
    }
}

#Preview {
    FeedView()
}
