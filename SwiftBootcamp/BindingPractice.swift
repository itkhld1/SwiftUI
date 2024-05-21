//
//  BindingPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 13.05.2024.
//

import SwiftUI

struct BindingPractice: View {
    
    @State var backgroundColor: Color = Color.brown
    @State var title: String = "Title"
    
    var body: some View {
        
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor : Color
    @State var buttonColor: Color = Color.teal
    @Binding var title: String
    
    var body: some View {
        Button(action: {
            backgroundColor = Color.orange
            buttonColor = Color.pink
            title = "Started!"
            
        }, label: {
            Text("START" .uppercased())
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal,10)
                .background(buttonColor)
                .cornerRadius(10)
        })
        
        Button {
            backgroundColor = Color.yellow
            buttonColor = Color.brown
            title = "Stopped!"
        } label: {
            Text("STOP".uppercased())
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal,10)
                .background(buttonColor)
                .cornerRadius(10)
        }

    }
}

#Preview {
    BindingPractice()
}
