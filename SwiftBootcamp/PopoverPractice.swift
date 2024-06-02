//
//  PopoverPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-05-16.
//

import SwiftUI

struct PopoverPractice: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        
        ZStack {
            Color.orange.ignoresSafeArea()
            
            VStack {
                Button("Click") {
                    showNewScreen.toggle()
                }
                Spacer()
            }
            .sheet(isPresented: $showNewScreen, content: {
                NewScreen()
            })
        }
//        ZStack {
//            Color.orange
//                .ignoresSafeArea()
//            VStack {
//                Button("Button") {
//                    showNewScreen.toggle()
//                }
//                Spacer()
//            }
//            
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })
//        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            Color.purple.ignoresSafeArea()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
            })
            .padding()
        }
//        ZStack(alignment: .topLeading) {
//            Color.purple
//                .ignoresSafeArea()
//            
//            Button(action: {
//                presentationMode.wrappedValue.dismiss()
//            }, label: {
//                Image(systemName: "xmark")
//                    .foregroundColor(.white)
//            })
//            .padding(12)
//        }
    }
}

#Preview {
    PopoverPractice()
    //NewScreen()
}
