//
//  StatePractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 13.05.2024.
//

import SwiftUI

struct StatePractice: View {
    
    @State var backGroundColor: Color = Color.brown
    @State var myTitle: String = "SwiftUI"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            backGroundColor
                .ignoresSafeArea()

            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1".uppercased()) {
                        backGroundColor = .orange
                        myTitle = "BUTTON 1 WAS PRESSED"
                        count += 1
                    }
                    
                    Button("button 2".uppercased()) {
                        backGroundColor = .purple
                        myTitle = "BUTTON 2 WAS PRESSED"
                        count -= 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StatePractice()
}
