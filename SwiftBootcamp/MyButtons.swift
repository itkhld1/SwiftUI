//
//  MyButtons.swift
//  SwiftBootcamp
//
//  Created by itkhld on 13.05.2024.
//

import SwiftUI

struct MyButtons: View {
    
    @State var title: String = "This is the SwiftUI"
    @State var backgroundColor: Color = Color.red
    
    var body: some View {
        
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            buttonnn(backgroundColor: $backgroundColor, title: $title)
        }
}

struct buttonnn: View {
    
        @Binding var backgroundColor: Color
        @Binding var title: String
        
        var body: some View {
            
            VStack(spacing: 20) {
                Text(title)
                
                Button(action: {
                    backgroundColor = Color.blue
                    self.title = "BUTTON WAS PRESSED!"
                }, label: {
                    Text("SwiftUI")
                        .font(.caption)
                        .bold()
                        .foregroundColor(.gray)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(
                            Capsule()
                                .fill(Color.white)
                                .stroke(Color.gray, lineWidth: 3.0)
                        )
                    
                })
                                
                Button(action: {
                    backgroundColor = Color.yellow
                    self.title = "BUTTON NO 2 WAS PRESSED!"
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal, 20)
                        .background(
                            Color.orange
                                .cornerRadius(20)
                                .shadow(color: .orange ,radius: 3)
                        )
                })
                
                Button(action: {
                    backgroundColor = Color.green
                    self.title = "BUTTON NO 3 WAS PRESSED!"
                }, label: {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 75, height: 75)
                        .shadow(color: .orange, radius: 2)
                        .overlay (
                            Image(systemName: "heart.fill")
                                .font(.largeTitle)
                                .foregroundColor(Color.orange)
                                .shadow(color: .orange, radius: 40)
                        )
                })
                
                Button(action: {
                    backgroundColor = Color.brown
                    self.title = "BUTTON NO 4 WAS PRESSED!"
                }, label: {
                    Text("Finished".uppercased())
                        .font(.caption)
                        .bold()
                        .foregroundColor(.gray)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(
                            Capsule()
                                .fill(Color.white)
                                .stroke(Color.gray, lineWidth: 3.0)
                        )
                })
            }
        }
    }
}

#Preview {
    MyButtons()
}
