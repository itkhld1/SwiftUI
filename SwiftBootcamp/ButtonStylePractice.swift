//
//  ButtonStylePractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-28.
//

import SwiftUI

struct ButtonStylePractice: View {
    var body: some View {
        
        VStack {
            Button("Button") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(PlainButtonStyle())
            
            Button("Button") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(DefaultButtonStyle())
            .buttonBorderShape(.roundedRectangle)
            
            Button("Button") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.extraLarge)
            .buttonStyle(BorderedButtonStyle())
            
            Button("Button") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(BorderlessButtonStyle())
            
            Button("Button") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(BorderedProminentButtonStyle())
        }
    }
}

#Preview {
    ButtonStylePractice()
        .preferredColorScheme(.light)
}
