//
//  TernaryOperators.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-05-15.
//

import SwiftUI

struct TernaryOperators: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("\(isStartingState)".uppercased()) {
                isStartingState.toggle()
            }
            .background(
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.black)
                    .frame(width: 120, height: 34.5)
            )
            
            Text(isStartingState ? "STARTING" : "ENDING") // tirnary operations here
                .font(.headline)
                .foregroundColor(.accentColor)
                .padding()
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 55)
                .fill(isStartingState ? Color.brown : Color.gray)
                .frame(width: 129, height: 40)
            Spacer()
        }
    }
}

#Preview {
    TernaryOperators()
}
