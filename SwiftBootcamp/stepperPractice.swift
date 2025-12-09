//
//  stepperPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-16.
//

import SwiftUI

struct stepperPractice: View {
    
    @State var stepperValue: Int = 10
    @State var widthInrement: Int = 0
    
    var body: some View {

        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                
            RoundedRectangle(cornerRadius: 35.0)
                .frame(width: 100 + CGFloat(widthInrement), height: 100)
            
            Stepper("Stepper #2") {
                IncrementWidth(amount: 10)
                
            } onDecrement: {
                IncrementWidth(amount: -10)
                
            }

        }
        .padding(20)
    }
    
    func IncrementWidth(amount: CGFloat){
        withAnimation(.bouncy) {
            widthInrement += Int(amount)
        }
    }
}

#Preview {
    stepperPractice()
}
