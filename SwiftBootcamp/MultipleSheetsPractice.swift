//
//  MultipleSheetsPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-07-07.
//

import SwiftUI

struct RandomModel: Identifiable {
    let id = UUID().uuidString
    let title: String
}

struct MultipleSheetsPractice: View {
    
    @State var selectedModel: RandomModel = RandomModel(title: "STARTING MODEL ")
    @State var showSheet: Bool = false
    //
    @State var selectIndex: Int = 0
    
    var body: some View {
        VStack(spacing: 10.0) {
            Button("Button 1") {
                //selectIndex = 1
                selectedModel = RandomModel(title: "First")
                showSheet.toggle()
            }
            
            Button("Button 2") {
                //selectIndex = 2
                selectedModel = RandomModel(title: "Second")
                showSheet.toggle()
            }
        }
        .foregroundColor(.white)
        .padding()
        .background(Color.orange)
        .cornerRadius(20)
        .sheet(isPresented: $showSheet, content: {
            NextScreen222(selectedModel: $selectedModel)
//            if selectIndex == 1 {
//                NextScreen222(selectedModel: RandomModel(title: "FIRST"))
//            } else if selectIndex == 2 {
//                NextScreen222(selectedModel: RandomModel(title: "SECOND"))
//            } else {
//                NextScreen222(selectedModel: RandomModel(title: "starting title"))
//            }
        })
    }
}

struct NextScreen222: View {
    
    @Binding var selectedModel: RandomModel
    
    var body: some View {
        Text(selectedModel.title)
            .font(.largeTitle)
    }
}

#Preview {
    MultipleSheetsPractice()
}
