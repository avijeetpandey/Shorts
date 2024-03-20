//
//  MainTabView.swift
//  Shorts
//
//  Created by Avijeet on 20/03/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("Home").tabItem {
                VStack {
                    Image(systemName: "house")
                    Text("Home")
                }
            }
            
            Text("Explorer").tabItem {
                VStack {
                    Image(systemName: "person.2")
                    Text("Friends")
                }
            }
            
            Text("Upload Post").tabItem {
                VStack {
                    Image(systemName: "plus")
                }
            }
            
            Text("Notifications").tabItem {
                VStack {
                    Image(systemName: "bell")
                    Text("Notifications")
                }
            }
            
            Text("Profile").tabItem {
                VStack {
                    Image(systemName: "person")
                    Text("Profile")
                }
            }
        }
    }
}

#Preview {
    MainTabView()
}
