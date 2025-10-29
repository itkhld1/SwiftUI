//
//  ResizableSheetPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-30.
//

import SwiftUI

struct ResizableSheetPractice: View {
    
    @State private var showSheet: Bool = false
    
    var body: some View {
        Button("Click to Start!") {
            showSheet.toggle()
        }
        .font(.headline)
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(20)
        .padding(.horizontal, 40)
        .sheet(isPresented: $showSheet) {
            myNewView()
//                .presentationDetents([.medium, .large])
//                .presentationDetents([.height(900)])
                .presentationDetents([.fraction(0.1), .medium, .large])
                .interactiveDismissDisabled()
//                .presentationDragIndicator(.hidden)
//                .interactiveDismissDisabled()
        }
//        .onAppear {
//            showSheet = true
//        }
    }
}

struct myNewView: View {
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            Text("You have to purchase the app first".uppercased())
                .font(.callout)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    ResizableSheetPractice()
}
