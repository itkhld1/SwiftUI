//
//  SafeArealnsetsPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-30.
//

import SwiftUI

struct SafeAreaInsetsPractice: View {
    var body: some View {
        NavigationStack {
            List(0..<50) { _ in
                   Rectangle()
                    .fill(Color.red)
                    .frame(height: 300)
                    
            }
            .navigationTitle("Safe Area Insets")
            .navigationBarTitleDisplayMode(.inline)
//            .overlay(alignment: .bottom) {
//                Text("This is Example")
//                    .frame(maxWidth: .infinity)
//                    .background(Color.yellow)
            .safeAreaInset(edge: .top, alignment: .leading, spacing: nil) {
                Text("Home")
                    .frame(maxWidth: .infinity)
                    //.padding()
                    //.background(Color.white.edgesIgnoringSafeArea(.bottom))
                    //.clipShape(Circle())
                    //.padding()
            }
        }
    }
}

#Preview {
    SafeAreaInsetsPractice()
}
