//
//  SafeeAreaa.swift
//  SwiftBootcamp
//
//  Created by itkhld on 12.05.2024.
//

import SwiftUI

struct SafeeAreaa: View {
    
    let numbers = [1, 2, 3, 4, 5, 6, 7, 8]
    
    var body: some View {
        ScrollView(showsIndicators: true, content: {
            Text("SwiftUI")
                .font(.largeTitle)
                .frame(maxWidth: .infinity)
                .foregroundColor(.orange)
                .shadow(color: .black, radius: 15)
                        
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.orange)
                .frame(height: 150)
                .shadow(color: .orange ,radius: 10)
                .padding(20)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.orange)
                .frame(height: 150)
                .shadow(color: .orange ,radius: 10)
                .padding(20)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.orange)
                .frame(height: 150)
                .shadow(color: .orange ,radius: 10)
                .padding(20)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.orange)
                .frame(height: 150)
                .shadow(color: .orange ,radius: 10)
                .padding(20)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.orange)
                .frame(height: 150)
                .shadow(color: .orange ,radius: 10)
                .padding(20)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.orange)
                .frame(height: 150)
                .shadow(color: .orange ,radius: 10)
                .padding(20)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.orange)
                .frame(height: 150)
                .shadow(color: .orange ,radius: 10)
                .padding(20)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.orange)
                .frame(height: 150)
                .shadow(color: .orange ,radius: 10)
                .padding(20)
        })
        
//        ZStack {
//            Color.green
//                .edgesIgnoringSafeArea(.all)
//            
//            VStack {
//                Text("SwiftUI.")
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            //.background(Color.orange)
//        }
    }
}

#Preview {
    SafeeAreaa()
}
