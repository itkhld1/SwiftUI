//
//  TextFieldPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-13.
//

import SwiftUI

struct TextFieldPractice: View {
    
    @State var textFieldtext: String = ""
    @State var sendButton: Bool = false
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView{
            VStack {
                TextField("Type Something here...", text: $textFieldtext)
                    //.textFieldStyle(.roundedBorder)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(20))
                    //.foregroundColor(.black)
                    .font(.headline)
                    .padding()
                
                Button(action: {
                    if textIsApporopriate() {
                        DataSave()
                    }
                }, label: {
                    Text("SAVE")
                        .frame(width: 250, height: 40)
                        .background(textIsApporopriate() ? Color.blue : Color.gray)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                        .font(.headline)
                })
                .disabled(!textIsApporopriate())
                
                // THE FOREACH CODE IS CORRECT BUT I DON'NT KNOW WHY I GOT ERROR WHEN I USE FOR EACH
                // THE ERROR IS argument passed to call that takes no arguments
                
//                ForEach(dataArray, id: \.self) { data in
//                    Text(data)
//                        .padding(.vertical, 2)
//                }
                
                Spacer()
            }
            .navigationTitle("Text Save")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    func textIsApporopriate() -> Bool {
        if textFieldtext.count >= 3 {
            return true
        }
        return false
    }
    
    func DataSave() {
        if !textFieldtext.isEmpty {
            dataArray.append(textFieldtext)
            textFieldtext = ""
        }
    }
}

#Preview {
    TextFieldPractice()
}
