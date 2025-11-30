//
//  SliderPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-16.
//

import SwiftUI

struct SliderPractice: View {
    
    @State var sliderValue: Double = 50
    @State var colorChanges: Color = .green
    
    var body: some View {
        VStack {
            Text("Rating: ")
            Text(
                String(format: "%.f", sliderValue)
            )
            //Slider(value: $sliderValue)
            //Slider(value: $sliderValue, in: 1...5)
            //Slider(value: $sliderValue, in: 0...100, step: 1.0)
            Slider(
                value: $sliderValue,
                in: 1...100,
                step: 1.0,
                onEditingChanged: { (_) in
                    colorChanges = .green
                },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("100"),
                label: {
                    Text("Title")
                })
                .accentColor(.orange)
        }
        .padding(20)
        Spacer()
    }
}

#Preview {
    SliderPractice()
}
