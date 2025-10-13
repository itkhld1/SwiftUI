//
//  MyImage.swift
//  SwiftBootcamp
//
//  Created by itkhld on 9.05.2024.
//

import SwiftUI

struct MyImage: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea(.all)
            
            Image("swift")
                .resizable()
                //.aspectRatio(contentMode: .fit)
                //.scaledToFit()
                .scaledToFill()
                .frame(width: 300, height: 200)
                //.clipped()
                //.cornerRadius(30)
                .clipShape(
                    //.buttonBorder
                    //.circle
                    //.capsule
                    .buttonBorder
                )
            
        }
    }
}

#Preview {
    MyImage()
}
