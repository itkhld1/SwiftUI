//
//  DarkModePractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-18.
//

import SwiftUI

struct DarkModePractice: View {
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(spacing: 30.0) {
                    Text("Primary")
                        .foregroundColor(.primary)
                    Text("Secondery")
                        .foregroundColor(.secondary)
                    Text("Black")
                        .foregroundColor(.black)
                    Text("White")
                        .foregroundColor(.white)
                    Text("Red")
                        .foregroundColor(.red)
                    Text("Adaptive")
                        .foregroundColor(.adaptive)
                }
                .navigationTitle("Dark Mode")
            }
        }
    }
}

#Preview {
    DarkModePractice()
        .preferredColorScheme(.light)
}
