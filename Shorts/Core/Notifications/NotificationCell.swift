//
//  NotificationCell.swift
//  Shorts
//
//  Created by Avijeet on 20/03/24.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 32,height: 32)
                .foregroundStyle(Color(.systemGray5))
            
            HStack {
                Text("max.verstappen ")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                +
                
                Text("liked your post ")
                    .font(.footnote)
                
                +
                
                Text("3d")
                    .font(.footnote)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Rectangle()
                .frame(width: 48,height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 6))
        }.padding(.horizontal)
    }
}

#Preview {
    NotificationCell()
}
