//
//  extract.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-05-14.
//

import SwiftUI

struct extract: View {
    
    @State var backgroundColor: Color = Color.brown
    @State var myTitle: String = "SwiftUI"
    
    
    var body: some View {
        ZStack {
            //Background Color
            backgroundColor
                .ignoresSafeArea()
            
            // Content
            LayerView
            
        }
    }
    
    var LayerView: some View {
        VStack {
            Text("\(myTitle)")
                .font(.largeTitle)
            Button(action: {
                PressedButton()
                
            }, label: {
                Text("Press Me".uppercased())
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }
    }
    
    func PressedButton() {
        backgroundColor = .yellow
        myTitle = "You Pressed for SwiftUI"
    }
}

#Preview {
    extract()
}
