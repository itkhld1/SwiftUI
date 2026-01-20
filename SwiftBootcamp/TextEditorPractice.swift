//
//  TextEditorPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-13.
//

import SwiftUI

struct TextEditorPractice: View {
    
    @State var textEditorText: String = "Type here something..."
    @State var isSave: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                TextEditor(text: $textEditorText)
                    .colorMultiply(.gray.opacity(0.4))
                    .cornerRadius(9)
                    .frame(height: 250)
                
                HStack(spacing: 100.0) {
                    Button(action: {
                        
                    }, label: {
                        Text("Save")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 100)
                            .background(textIsApporopriate() ? Color.blue : Color.gray)
                            .cornerRadius(30)
                })
                    Button(action: {
                        
                    }, label: {
                        Text("Clear")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 100)
                            .background(textIsApporopriate() ? Color.blue : Color.gray)
                            .cornerRadius(30)
                    })
                }
                .disabled(!textIsApporopriate())
                .padding(.horizontal)
                Spacer()
            }
            .padding(.vertical, 15)
            .padding(.horizontal, 10)
            .navigationTitle("Text Editor")
            .navigationBarTitleDisplayMode(.large)
        }
    }
    
    func textIsApporopriate() -> Bool {
        if textEditorText.count >= 10 {
            return true
        }
        return false
    }
}

#Preview {
    TextEditorPractice()
}
