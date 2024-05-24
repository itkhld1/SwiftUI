//
//  ContextMenuPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-05-23.
//

import SwiftUI

struct ContextMenuPractice: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("SwiftUI")
                .font(.headline)
            Text("A example of context menu.")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding()
        .background(Color.orange.cornerRadius(30))
        .contextMenu(ContextMenu(menuItems: {
            Button(action: {
                
            }, label: {
                Label("Shre Post", systemImage: "flame.fill")
            })
            
            Button(action: {
                
            }, label: {
                HStack{
                    Text("Like Post")
                    Image(systemName: "heart.fill")
                }
            })
            
            Button(action: {
                
            }, label: {
                Text("Report Post")
    
            })
        }))
    }
}

#Preview {
    ContextMenuPractice()
}
