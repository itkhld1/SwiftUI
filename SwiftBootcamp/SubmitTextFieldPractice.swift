//
//  SubmitTextFieldPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-28.
//

import SwiftUI

struct SubmitTextFieldPractice: View {
    
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            TextField("Placeholder...", text: $text)
                .submitLabel(.next)
                .padding()
                .background(Color.gray.opacity(0.4))
                .cornerRadius(25)
                .padding()
            
            TextField("Placeholder...", text: $text)
                .submitLabel(.continue)
                .padding()
                .background(Color.gray.opacity(0.4))
                .cornerRadius(25)
                .padding()
            
            TextField("Placeholder...", text: $text)
                .submitLabel(.go)
                .padding()
                .background(Color.gray.opacity(0.4))
                .cornerRadius(25)
                .padding()
                
        }
    }
}

#Preview {
    SubmitTextFieldPractice()
}
