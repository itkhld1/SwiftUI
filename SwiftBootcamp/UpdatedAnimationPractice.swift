//
//  UpdatedAnimationPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-30.
//

import SwiftUI

struct UpdatedAnimationPractice: View {
    
    @State private var isAnimated: Bool = false
    @State private var isAnimated1: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 40) {
                Button("Horizontal Move") {
                    isAnimated.toggle()
                }
                .padding()
                .frame(width: 200 ,height: 50)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(20)
                
                Button("Verticle Move") {
                    isAnimated1.toggle()
                }
                .padding()
                .frame(width: 200 ,height: 50)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(20)
                
                ZStack {
                    Circle()
                        .fill(Color.orange)
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: isAnimated ? .leading : .trailing)
                        .frame(maxHeight: .infinity, alignment: isAnimated1 ? .top : .bottom)
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(20)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        .animation(.bouncy(duration: 0.5, extraBounce: 0.1), value: isAnimated)
        .animation(.bouncy(duration: 0.5, extraBounce: 0.1), value: isAnimated1)
    }
}

#Preview {
    UpdatedAnimationPractice()
}
