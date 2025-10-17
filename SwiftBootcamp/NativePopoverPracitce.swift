//
//  NativePopoverPracitce.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-30.
//

import SwiftUI

struct NativePopoverPracitce: View {
    
    @State private var showPopover: Bool = false
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            Button(action: {
                showPopover.toggle()
            }) {
                Label("Subscribe!", systemImage: "bell.fill")
                    .padding()
                    .frame(width: 200, height: 50)
                    .foregroundColor(.black)
                    .shadow(radius: 2)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 2)
                    )
                    .shadow(radius: 10)
                    .cornerRadius(20)
            }
            .popover(isPresented: $showPopover, attachmentAnchor: .point(.center), content: {
                VStack {
                    Text("Hello, Sub")
                        .font(.headline)
                        .foregroundColor(.red)
                    Text("Thanks for Subscription 😎")
                        .font(.caption)
                        .frame(width: 200)
                        .presentationCompactAdaptation(.popover)
                }
            })
//            .popover(isPresented: $showPopover) {
//                VStack {
//                    Text("Hello, Sub")
//                        .font(.headline)
//                        .foregroundColor(.red)
//                    Text("Thanks for Subscription 😎")
//                        .font(.caption)
//                        .frame(width: 200)
//                        .presentationCompactAdaptation(.popover)
//                }
//            }
        }
    }
}

#Preview {
    NativePopoverPracitce()
}
