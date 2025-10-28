//
//  paddingAndSpacing.swift
//  SwiftBootcamp
//
//  Created by itkhld on 10.05.2024.
//

import SwiftUI

struct paddingAndSpacing: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("SwiftUI,")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("This is the descriptions about what we are going to do.")
                .multilineTextAlignment(.center)
        }
        .frame(width: 300, height: 130)
        .foregroundColor(.white)
        .background(Color.teal)
        .padding()
        .background(Color.teal)
        .shadow(radius: 10, x: 0.0, y: 0.0)

        
//            .frame(maxWidth: .infinity)
//            .background(Color.orange)
//            .padding(.leading, 20)
//            .background(Color.orange)
//            .padding(.all, 10)
//            .frame(width: 100, height: 100)
//            .background(Color.blue)
    }
}

#Preview {
    paddingAndSpacing()
}
