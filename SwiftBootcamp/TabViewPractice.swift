//
//  TabViewPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-18.    
//

import SwiftUI

struct TabViewPractice: View {
    
    // MARK: PROPERTY
    @State private var selectedTab: Int = 0
    
    // MARK: BODY
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab)
            
            NotificationView007()
            
            HomeView007()
        }
    }
}

#Preview {
    TabViewPractice()
}

    // MARK: TABVIEW SUBVIEW
struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            VStack {
                Text("HOME TAB")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go to Menu")
                        .font(.headline)
                        .foregroundColor(.orange)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(25)
                })
            }
        }
        .tabItem {
            Image(systemName: "house.fill")
            Text("Home")
        }
        .tag(0)
    }
}

    // MARK: NOTIFICATIONVIEW SUBVIEW
struct NotificationView007: View {
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            Text("NOTIFICATION TAB")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        .tabItem {
            Image(systemName: "bell.fill")
            Text("Notification")
        }
        .tag(1)
    }
}

    // MARK: HOMEVIEW SUBVIEW
struct HomeView007: View {
    var body: some View {
        ZStack{
            Color.yellow.ignoresSafeArea()
            Text("MENU TAB")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        .tabItem {
            Image(systemName: "text.justify")
            Text("Menu")
        }
        .tag(2)
    }
}
