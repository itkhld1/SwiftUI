//
//  BackgroundAndOverlay#2.swift
//  SwiftBootcamp
//
//  Created by itkhld on 10.05.2024.
//

import SwiftUI

struct BackgroundAndOverlay_2: View {
    var body: some View {
        
        Image(systemName: "heart.fill")
            .shadow(radius: 10)
            .foregroundColor(.white)
            .font(.system(size: 40))
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.red, Color.purple, Color.blue]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
                    .overlay(
                        Circle()
                            .fill(
                                LinearGradient(
                                gradient: Gradient(colors: [Color.red, Color.purple, Color.blue]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)
                            )
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("20+")
                                    .font(.caption)
                                    .foregroundColor(.white)
                            )
                        .shadow(color: .black, radius: 20, x: 0.0, y: 0.0)
                        ,alignment: .topTrailing
                    )
            )
        
//        Rectangle()
//            .fill(Color.orange)
//            .frame(width: 100, height: 100)
//            .opacity(0.9)
//            .overlay(
//                Rectangle()
//                    .fill(Color.orange)
//                    .frame(width: 200, height: 200)
//                    .opacity(0.6),
//                alignment: .center
//            )
//            .background(
//                Rectangle()
//                    .fill(Color.orange)
//                    .frame(width: 300, height: 300)
//                    .opacity(0.3)
//            )
//            .background(
//                Rectangle()
//                    .fill(Color.orange)
//                    .frame(width: 400, height: 400)
//                    .opacity(0.1)
//            )
        
//        Circle()
//            .fill(Color.orange)
//            .opacity(0.9)
//            .frame(width: 100, height: 100)
//            .overlay(
//                Text("1")
//                    .font(.title)
//                    .foregroundColor(.white)
//            )
//            .background(
//                Circle()
//                    .fill(Color.orange)
//                    .frame(width: 120, height: 120)
//                    .opacity(0.6)
//            )
//            .background(
//                Circle()
//                    .fill(Color.orange)
//                    .frame(width: 140, height: 140)
//                    .opacity(0.3)
//            )
    }
}

#Preview {
    BackgroundAndOverlay_2()
}
