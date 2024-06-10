//
//  AnimationTimingPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-05-15.
//

import SwiftUI

struct AnimationTimingPractice: View {
    
    @State var isAnimated: Bool = false
    @State var duretion: Double = 0.5
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimated.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeInOut(duration: duretion), value: isAnimated)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.linear(duration: duretion), value: isAnimated)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.interactiveSpring(duration: duretion), value: isAnimated)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.snappy(duration: duretion), value: isAnimated)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.spring(response: 3.5,
                    dampingFraction: 0.5,
                    blendDuration: 1.0 ),
                    value: isAnimated)
        }
        .shadow(color: .gray, radius: 10, x: -7)
    }
}

#Preview {
    AnimationTimingPractice()
}
