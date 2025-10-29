//
//  RotationGesturePractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-07-06.
//

import SwiftUI

struct RotationGesturePractice: View {
    
    @State var currentScale: CGFloat = 1
    @State var newScale: CGFloat = 1
    @State var currentAngle: Angle = .zero
    @State var newAngle: Angle = .zero
    
    var body: some View {
        
        Image("itkhld")
            .resizable()
            .scaledToFill()
            .scaleEffect(currentScale)
            .rotationEffect(currentAngle + newAngle)
            .gesture(
                MagnificationGesture()
                    .onChanged { value in
                        self.currentScale = self.newScale * value
                    }
                    .onEnded { value in
                        self.newScale = self.currentScale
                    }
                    .simultaneously(with:
                                   RotationGesture()
                        .onChanged{ angle in
                            self.newAngle = angle
                        }
                        .onEnded{ angle in
                            self.currentAngle += self.newAngle
                            self.newAngle = .zero
                        }
                    )
            )
            .animation(.default, value: currentScale)
            .animation(.default, value: currentAngle)
    }
}

#Preview {
    RotationGesturePractice()
}
