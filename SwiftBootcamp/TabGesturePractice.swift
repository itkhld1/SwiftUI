//
//  TabGesturePractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-19.
//

import SwiftUI

struct TabGesturePractice: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.yellow)
            
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity )
                    .background(isSelected ? Color.green : Color.yellow)
                    .cornerRadius(25)
            })
            
            Text("TAB Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 50)
                .frame(maxWidth: .infinity )
                .background(isSelected ? Color.green : Color.yellow)
                .cornerRadius(25)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
                .onTapGesture(count: 2, perform: {
                    isSelected.toggle()
                })
            
            Spacer()
        }
        .padding(40)
    }
}

#Preview {
    TabGesturePractice()
}
