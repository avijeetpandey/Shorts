//
//  FeedCell.swift
//  Shorts
//
//  Created by Avijeet on 20/03/24.
//

import SwiftUI
import AVKit

struct FeedCell: View {
    let post: Post
    var player: AVPlayer
    
    init(post: Post, player: AVPlayer) {
        self.post = post
        self.player = player
    }
    
    var body: some View {
        ZStack {
            CustomVideoPlayer(player: player)
                .containerRelativeFrame([.horizontal, .vertical])
            
            VStack {
                Spacer()
                
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("@test.user")
                            .fontWeight(.semibold)
                        
                        Text("Rocket ship preparing to take off")
                            .fontWeight(.semibold)
                    }.font(.subheadline)
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    VStack(spacing: 28) {
                        
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(.gray)
                        
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 28,height: 28)
                                    .foregroundStyle(.white)
                                
                                Text("12")
                                    .font(.footnote)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "ellipsis.bubble.fill")
                                    .resizable()
                                    .frame(width: 28,height: 28)
                                    .foregroundStyle(.white)
                                
                                Text("27")
                                    .font(.footnote)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "bookmark.fill")
                                    .resizable()
                                    .frame(width: 22,height: 28)
                                    .foregroundStyle(.white)
                                
                                Text("2")
                                    .font(.footnote)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "arrowshape.turn.up.right.fill")
                                    .resizable()
                                    .frame(width: 28,height: 28)
                                    .foregroundStyle(.white)
                                
                                
                                Text("30")
                                    .font(.footnote)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                            
                        }
                    }
                }.padding(.bottom, 80)
                
            }.padding()
        }.onTapGesture {
            switch player.timeControlStatus {
            case .paused:
                player.play()
            case .waitingToPlayAtSpecifiedRate:
                break
            case .playing:
                player.pause()
            @unknown default:
                break
            }
        }
    }
}

#Preview {
    FeedCell(post: .init(id: NSUUID().uuidString,
                         videoUrl: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"), player: AVPlayer())
}
