//
//  BackgroundAndOverlay.swift
//  SwiftBootcamp
//
//  Created by itkhld on 10.05.2024.
//

import SwiftUI

struct BackgroundAndOverlay: View {
    var body: some View {
        Text("SwiftUI.")
            .foregroundColor(.white)
            .background(
                //Color.orange
                //LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.purple ,Color.blue]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 100, height: 100, alignment: .center)
                    .opacity(0.9)
//                    .fill(Color.orange)
//                    .opacity(0.9)
//                    .frame(width: 100, height: 100, alignment: .center)
//                    .fill(Color.orange)
//                    .font(.largeTitle)
//                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
//                    .font(.largeTitle)
                    
            )
            .background(
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.purple ,Color.blue]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 120, height: 120, alignment: .center)
                    .opacity(0.6)
//                    .fill(Color.orange)
//                    .opacity(0.6)
//                    .frame(width: 120, height: 120, alignment: .center)
            )
            .background(
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.purple ,Color.blue]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 140, height: 140, alignment: .center)
                    .opacity(0.3)
//                    .fill(Color.orange)
//                    .opacity(0.3)
//                    .frame(width: 140, height: 140, alignment: .center)
            )
    }
}

#Preview {
    BackgroundAndOverlay()
}
