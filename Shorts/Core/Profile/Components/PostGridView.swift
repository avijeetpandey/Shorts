//
//  ProfileGridView.swift
//  Shorts
//
//  Created by Avijeet on 20/03/24.
//

import SwiftUI

struct PostGridView: View {
    private let items: [GridItem] =  [GridItem(.flexible(), spacing: 1),
                                      GridItem(.flexible(), spacing: 1),
                                      GridItem(.flexible(), spacing: 1)]
    
    private let width = (UIScreen.main.bounds.width/3) - 2
    var body: some View {
        LazyVGrid(columns: items, spacing: 2) {
            ForEach(0..<25) { post in
                Rectangle()
                    .frame(width: width, height: 160)
                    .clipped()
            }
        }
    }
}

#Preview {
    PostGridView()
}
