//
//  Gradients.swift
//  SwiftBootcamp
//
//  Created by itkhld on 9.05.2024.
//

import SwiftUI

struct Gradients: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: [Color.red, Color.purple,Color.blue]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing)
                
//                RadialGradient(gradient: Gradient(colors: [Color.purple, Color.blue]),
//                               center: .center,
//                               startRadius: 1,
//                               endRadius: 300)
                
//                AngularGradient(
//                    gradient: Gradient(colors: [Color.red, Color.purple, Color.blue]),
//                    center: .center,
//                    angle: .degrees(45))
           )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    Gradients()
}
