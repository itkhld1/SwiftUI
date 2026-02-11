//
//  ViewThatFitsPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-30.
//

import SwiftUI

struct ViewThatFitsPractice: View {
    var body: some View {
        
        ZStack {
            Color.orange.ignoresSafeArea()
            ViewThatFits {
                Text("This is a simple text. This is a simple text. This is a simple text.")
                Text("This is a simple text.")
                    .font(.headline)
    //                .lineLimit(2)
    //                .minimumScaleFactor(2)
            }
        }
        .frame(height: 300)
        .cornerRadius(8)
        .padding()
    }
}

#Preview {
    ViewThatFitsPractice()
}
