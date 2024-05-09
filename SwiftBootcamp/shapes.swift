//
//  shapes.swift
//  SwiftBootcamp
//
//  Created by itkhld on 9.05.2024.
//

import SwiftUI

struct shapes: View {
    var body: some View {

//        Circle()
//            .fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
//            .foregroundColor(.pink)
//            .stroke(Color.red)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 12, lineCap: .butt, dash: [1.2]))
//            .trim(from: 0.3, to: 1.0)
//            .stroke(Color.purple, style: StrokeStyle(lineWidth: 1, lineCap: .butt, dash: [500]))
//
//        Ellipse()
//        Rectangle()
//            .trim(from: 0.2, to: 1.0)
//            .stroke(style: StrokeStyle(lineWidth: 1, lineCap: .butt, dash: [12]))
//            .frame(width: 200, height: 100)
        
//        Capsule(style: .circular)
        RoundedRectangle(cornerRadius: 100)
            .frame(width: 200, height: 100)

    }
}

#Preview {
    shapes()
}
