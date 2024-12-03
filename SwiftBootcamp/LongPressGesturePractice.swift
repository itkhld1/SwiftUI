//
//  LongPressGesture.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-07-06.
//

import SwiftUI

struct LongPressGesturePractice: View {
    
    @State var isComplete: Bool = false
    @State var isSuccess: Bool = false
    
    var body: some View {
            
        VStack {
            VStack {
                Rectangle()
                    .fill(isSuccess ? Color.black : Color.orange)
                    .frame(maxWidth: isComplete ? .infinity : 0)
                    .frame(height: 10)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.orange.opacity(0.6))
                
                Rectangle()
                    .fill(isSuccess ? Color.black : Color.orange)
                    .frame(maxWidth: isComplete ? .infinity : 0)
                    .frame(height: 10)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.orange.opacity(0.6))
            }
            
            HStack {
                Button("Click me!".uppercased()) {
                    // Empty button action to make it work as a button
                }
                .foregroundColor(.white)
                .padding()
                .background(Color.black)
                .cornerRadius(20)
                .onLongPressGesture(minimumDuration: 1) { (isPressing) in
                    if isPressing {
                        withAnimation(.easeInOut(duration: 1.0)) {
                            isComplete = true
                        }
                    } else {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                            if !isSuccess {
                                withAnimation(.easeInOut) {
                                    isComplete = false
                                }
                            }
                        }
                    }
                } perform: {
                    withAnimation(.easeInOut(duration: 1)) {
                        isSuccess = true
                    }
                }

                Button("Reset".uppercased()) {
                    withAnimation(.easeInOut) {
                        isComplete = false
                        isSuccess = false
                    }
                }
                .foregroundColor(.white)
                .padding()
                .background(Color.black)
                .cornerRadius(20)
            }
        }
    }
}

#Preview {
    LongPressGesturePractice()
}

    
        
//        Text(isComplete ? "COMPLETED" : "NOT COMPLETED")
//            .padding()
//            .padding(.horizontal)
//            .background(isComplete ? Color.orange : Color.green)
//            .cornerRadius(20)
//            .onLongPressGesture(minimumDuration: 0.5, maximumDistance: 50) {
//                isComplete.toggle()
//            }
//            .onTapGesture {
//                isComplete.toggle()
//            }
  
