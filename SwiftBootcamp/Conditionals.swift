//
//  Conditionals.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-05-14.
//

import SwiftUI

struct Conditionals: View {
    
    @State var showCircle: Bool = false
    @State var showRec: Bool = false
    @State var showRounded: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
        
            Button("Is Loading: \(isLoading)") {
                isLoading.toggle()
            }
            
            Button("Circle Button: \(showCircle)") {
                showCircle.toggle()
            }
            Button("Rectangle Button: \(showRec)") {
                showRec.toggle()
            }
            Button("Rounded Button: \(showRounded)") {
                showRounded.toggle()
            }
            
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            if showRec {
                Rectangle()
                    .frame(width: 100, height: 100)
            } 
            if showRounded {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 129, height: 40)
            }
            if !showCircle && !showRec && !showRounded {
                Ellipse()
                    .frame(width: 120, height: 100)
            }

            if isLoading {
                ProgressView()
            }
        }
        Spacer()
    }
}

#Preview {
    Conditionals()
}
