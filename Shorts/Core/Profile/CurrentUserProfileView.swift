//
//  CurrentUserProfileView.swift
//  Shorts
//
//  Created by Avijeet on 20/03/24.
//

import SwiftUI

struct CurrentUserProfileView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 2) {
                    
                    ProfileHeaderView()
                    
                    PostGridView()
                        .padding(.top)
                    
                }.padding(.top)
            }.navigationTitle("Profile")
                .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    CurrentUserProfileView()
}
