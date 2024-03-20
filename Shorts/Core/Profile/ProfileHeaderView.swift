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
                VStack {
                    Text("5")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    
                    Text("Following")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }.frame(width: 80, alignment: .center)
                
                VStack {
                    Text("10")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    
                    Text("Followers")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }.frame(width: 80, alignment: .center)
                
                VStack {
                    Text("89")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    
                    Text("Likes")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }.frame(width: 80, alignment: .center)
            }
        }
    }
}

#Preview {
    ProfileHeaderView()
}
