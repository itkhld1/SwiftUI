//
//  AnimationPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-05-15.
//

import SwiftUI

struct AnimationPractice: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button(isAnimated ? "false".uppercased() : "true".uppercased()) {
                withAnimation(.easeIn) {
                    isAnimated.toggle()
                }
            }
            .background(
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 120, height: 35.5)
            )
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 25 : 50)
                .fill(isAnimated ? Color.orange : Color.green)
                .frame(
                    width: isAnimated ? 100 : 200,
                    height: isAnimated ? 100 : 200)
                .offset(y: isAnimated ? 340 : 0)
            Spacer()
        }
    }
}

#Preview {
    AnimationPractice()
}
