//
//  AsyncImagePractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-23.
//

import SwiftUI

struct AsyncImagePractice: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 350)
                    .cornerRadius(25)
            case .failure(let error):
                Image(systemName: "questionmark")
            default:
                Image(systemName: "questionmark")
            }
        }
//        AsyncImage(url: url, content: { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 350, height: 350)
//                .cornerRadius(25)
//        }, placeholder: {
//            ProgressView()
//        })
    }
}

#Preview {
    AsyncImagePractice()
}
