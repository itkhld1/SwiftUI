//
//  BadgesPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-28.
//

import SwiftUI

struct BadgesPractice: View {
    var body: some View {
//        List{
//            Text("Menu")
//                .badge("New items")
//            Text("Home")
//            Text("Notifications")
//            Text("Requests")
//        }
        
        TabView{
            Color.orange
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }

            Color.yellow
                .tabItem {
                    Image(systemName: "text.justify")
                    Text("Menu")
                }
                .badge(2)
            
            Color.brown
                .tabItem {
                    Image(systemName: "heart")
                    Text("Notification")
                }
                .badge(20)
        }
    }
}

#Preview {
    BadgesPractice()
}
