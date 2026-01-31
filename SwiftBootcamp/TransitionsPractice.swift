//
//  TransitionsPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-05-15.
//

import SwiftUI

struct TransitionsPractice: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.move(edge: .top))
                    .animation(.easeInOut, value: showView)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionsPractice()
}
