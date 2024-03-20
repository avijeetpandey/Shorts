//
//  UserStatsView.swift
//  Shorts
//
//  Created by Avijeet on 20/03/24.
//

import SwiftUI

struct UserStatsView: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.subheadline)
                .fontWeight(.bold)
            
            Text(subtitle)
                .font(.caption)
                .foregroundStyle(.gray)
        }.frame(width: 80, alignment: .center)
    }
}

#Preview {
    UserStatsView(title: "5", subtitle: "Followers")
}
