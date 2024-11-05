//
//  GroupingPracice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-30.
//

import SwiftUI

struct GroupingPractice: View {
    var body: some View {
        VStack(spacing: 50.0) {
            Text("Hello, World!")
            
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .foregroundColor(.green)
            .font(.callout)
            .fontWeight(.bold)
        }
        .foregroundColor(.orange)
        .font(.headline)
    }
}

#Preview {
    GroupingPractice()
}
