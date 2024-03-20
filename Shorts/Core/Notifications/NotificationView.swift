//
//  NotificationView.swift
//  Shorts
//
//  Created by Avijeet on 20/03/24.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(0 ..< 10) { notification in
                        NotificationCell()
                    }
                }
            }.navigationTitle("Notifications")
                .navigationBarTitleDisplayMode(.inline)
                .padding(.top)
        }
    }
}

#Preview {
    NotificationView()
}
