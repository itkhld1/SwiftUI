//
//  SheetsPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-05-16.
//

import SwiftUI

struct SheetsPractice: View {
    
    //@State var sheetShow: Bool = false
    @State var sheetShow : Bool = false
    
    var body: some View {
        
        ZStack {
            Color.green.ignoresSafeArea()
            
            Button(action: {
                sheetShow.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding()
                    .background(Color.white.cornerRadius(20))
            })
            .fullScreenCover(isPresented: $sheetShow, content: {
                screen2()
            })
        }
//        ZStack {
//            Color.green
//                .ignoresSafeArea()
//            
//            Button(action: {
//                sheetShow.toggle()
//                
//            }, label: {
//                Text("Button")
//                    .foregroundColor(.green)
//                    .font(.headline)
//                    .padding(20)
//                    .background(Color.white.cornerRadius(20))
//            })
//            .fullScreenCover(isPresented: $sheetShow, content: {
//                screen2()
//            })
//            
//            .sheet(isPresented: $sheetShow, content: {
//                screen2()
//            })
//        }
    }
}

struct screen2: View {
    
    //@Environment(\.presentationMode) var presentationMode
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            Color.brown.ignoresSafeArea()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(20)
            })
        }
//        ZStack(alignment: .topLeading) {
//            Color.orange
//                .ignoresSafeArea()
//            
//            Button(action: {
//                presentationMode.wrappedValue.dismiss()
//            }, label: {
//                Image(systemName: "xmark")
//                    .foregroundColor(.white)
//                    .font(.headline)
//                    .padding(20)
//            })
//        }
    }
}

#Preview {
    SheetsPractice()
    //screen2()
}
