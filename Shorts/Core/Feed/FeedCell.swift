//
//  FeedCell.swift
//  Shorts
//
//  Created by Avijeet on 20/03/24.
//

import SwiftUI

struct FeedCell: View {
    let post: Int
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.pink)
                .containerRelativeFrame([.horizontal, .vertical])
                .overlay {
                    Text("Post \(post)")
                        .foregroundStyle(.white)
                }
        }
    }
}

#Preview {
    FeedCell(post: 2)
}
