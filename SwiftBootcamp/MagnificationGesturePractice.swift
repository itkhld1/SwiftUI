//
//  MagnificationGesturePractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-07-06.
//

import SwiftUI

struct MagnificationGesturePractice: View {
    
    @State var currentAmount: CGFloat = 0
    @State var lastAmount: CGFloat = 0

    var body: some View {
        VStack(spacing: 10) {
            HStack {
                ZStack {
                    Image("itkhld")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                }
                Text("khalid")
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            Rectangle()
                .frame(height: 400)
                .scaleEffect(1 + currentAmount)
                .gesture(
                    MagnificationGesture()
                        .onChanged({ value in
                            currentAmount = value - 1
                        })
                        .onEnded({ value in
                            withAnimation(.spring) {
                                currentAmount = 0
                            }
                        })
                )
            
            HStack{
                Image(systemName: "heart.fill")
                Image(systemName: "message.fill")
                Spacer()
            }
            .padding(.horizontal)
            .font(.title2)
            Text("This is caption for the photo.")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
        }
        
//        Text("Hello, World!")
//            .font(.title)
//            .padding(40)
//            .background(Color.green.cornerRadius(50))
//            .scaleEffect(1 + currentAmount + lastAmount)
//            .gesture(
//                MagnificationGesture()
//                    .onChanged { value in
//                        currentAmount = value - 1
//                    }
//                    .onEnded { value in
//                        lastAmount += currentAmount
//                        currentAmount = 0
//                    }
//            )
    }
}

#Preview {
    MagnificationGesturePractice()
}
