//
//  ExtractSubview.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-05-14.
//

import SwiftUI

struct ExtractSubview: View {
    var body: some View {
        ZStack{
            Color.orange.ignoresSafeArea()
            
            HStack {
                MyItem(title: "Melon", count: 1, color: .green)
                MyItem(title: "Apples", count: 2, color: .red)
                MyItem(title: "Bananas", count: 3, color: .yellow)
            }
        }
    }
}

#Preview {
    ExtractSubview()
}

struct MyItem: View {
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding(.horizontal,30)
        .padding(.vertical, 10)
        .background(color)
        .cornerRadius(10)
    }
}
