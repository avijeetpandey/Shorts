//
//  ExplorerView.swift
//  Shorts
//
//  Created by Avijeet on 20/03/24.
//

import SwiftUI

struct ExplorerView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0..<10) { user in
                        UserCell()
                            .padding(.horizontal)
                    }
                }
            }.navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    ExplorerView()
}
