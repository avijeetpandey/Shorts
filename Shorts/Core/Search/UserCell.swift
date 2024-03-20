//
//  UserCell.swift
//  Shorts
//
//  Created by Avijeet on 20/03/24.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundStyle(Color(.systemGray5))
            
            VStack(alignment: .leading) {
                Text("test_user")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("Test name")
                    .font(.footnote)
            }
            
            Spacer()
        }
    }
}

#Preview {
    UserCell()
}
