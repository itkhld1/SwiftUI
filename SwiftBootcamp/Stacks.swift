//
//  Stacks.swift
//  SwiftBootcamp
//
//  Created by itkhld on 10.05.2024.
//

import SwiftUI

struct Stacks: View {
    var body: some View {
        VStack(spacing: 50){
            
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Text("2")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
        
//        VStack(alignment: .center, spacing: 10) {
//            Text("SwiftUI; ")
//                .font(.headline)
//                .foregroundColor(.black)
//                .underline()
//            Text("Means Swift User Interface")
//                .font(.caption)
//                .foregroundColor(.gray)
//        }
        
//        ZStack(alignment: .top) {
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 350, height: 500, alignment: .center)
//                
//            VStack(alignment: .leading) {
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150)
//                
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 100, height: 100)
//                
//                HStack(alignment: .bottom) {
//                    Rectangle()
//                        .fill(Color.purple)
//                        .frame(width: 50, height: 50)
//                    
//                    Rectangle()
//                        .fill(Color.pink)
//                        .frame(width: 75, height: 75)
//                    
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 25, height: 25)
//                }
//                .background(Color.white)
//            }
//            .background(Color.yellow)
//        }
        
//        ZStack(alignment: .trailing, content: {
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 200, height: 10)
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 150, height: 10)
//            Rectangle()
//                .fill(Color.black)
//                .frame(width: 80, height: 10)
//        })
        
//        HStack(alignment: .bottom, spacing: nil, content: {
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 200, height: 20)
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 150, height: 15)
//            Rectangle()
//                .fill(Color.black)
//                .frame(width: 100, height: 10)
//        })
        
//        VStack(alignment: .leading, spacing: 4, content: {
//            Text("SwiftUI")
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 200, height: 10)
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 150, height: 10)
//            Rectangle()
//                .fill(Color.black)
//                .frame(width: 100, height: 10)
//        })
//        VStack {
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(Color.black)
//                .frame(width: 100, height: 100)
//        }
    }
}

#Preview {
    Stacks()
}
