//
//  Icons.swift
//  SwiftBootcamp
//
//  Created by itkhld on 9.05.2024.
//

import SwiftUI

struct Icons: View {
    var body: some View {
        Text(" ")
        
        Image(systemName: "person.fill.badge.plus")
            .font(.largeTitle)
            .symbolRenderingMode(.multicolor)
            .padding(.vertical)
        
        Image(systemName: "paperplane.fill")
            .foregroundStyle(.tint)
            .font(.largeTitle)
        
        
        //Image(systemName: "heart.fill")
        //Image(systemName: "paperplane.fill")
            //.font(.largeTitle)
            //.resizable()
            //.scaledToFit()
            //.scaledToFill()
            //.aspectRatio(contentMode: .fit)
            //.font(.largeTitle)
            //.font(.system(size: 200))
            //.foregroundColor(Color(hue: 0.566, saturation: 0.96, brightness: 0.939))
            //.frame(width: 300, height: 300)
            //.clipped()
            //.clipShape(Circle())
  
        
    }
}

#Preview {
    Icons()
}
