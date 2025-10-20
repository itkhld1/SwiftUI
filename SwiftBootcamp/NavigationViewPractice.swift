//
//  NavigationViewPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-05-16.
//

import SwiftUI

struct NavigationViewPractice: View {
    var body: some View {
        NavigationView{
            ScrollView {
                
                NavigationLink("SwiftUI",
                               destination: OtherScreen())

                    NavigationLink("Mail 1", destination: OtherScreen())
                    Text("this is the first mail")
                
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All Mails")
            .navigationBarTitleDisplayMode(.automatic) // by default it is applied
            //.navigationBarHidden(true)
        }
    }
}

struct secondScreen: View {
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
                .navigationTitle("Emails")
        }
        
    }
}

struct OtherScreen: View {
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
                .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
    NavigationViewPractice()
}
