//
//  ProfileHeaderView.swift
//  Shorts
//
//  Created by Avijeet on 20/03/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 8) {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray5))
                
                Text("@lewis.hamilton")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            
            // Stats view
            HStack(spacing: 16) {
                UserStatsView(title: "5", subtitle: "Following")
                UserStatsView(title: "60", subtitle: "Followers")
                UserStatsView(title: "90", subtitle: "Likes")
            }
        }
    }
}

#Preview {
    ProfileHeaderView()
}
