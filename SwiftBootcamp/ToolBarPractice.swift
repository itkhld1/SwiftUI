//
//  ToolBarPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-28.
//

import SwiftUI

struct ToolBarPractice: View {
    
    @State var text: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack{
                Color.indigo.ignoresSafeArea()
                ScrollView {
                    TextField("Placeholder...", text: $text)
                        .padding()
                        .background(Color.white.opacity(0.7).cornerRadius(30))
                        .font(.headline)
                        .padding()
                }
                
                Text("Hello")
                    .foregroundColor(.white)
            }
            .navigationTitle("Toolbar")
//            .navigationBarItems(
//                leading: Image(systemName: "heart.fill"),
//                trailing: Image(systemName: "gear"))
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "gear")
                }
            }
            //.toolbar(.hidden, for: .bottomBar)
            //.toolbarBackground(.hidden, for: .navigationBar)
            //.toolbarColorScheme(.light, for: .navigationBar)
//            .toolbarTitleDisplayMode(.inline)
//            .toolbarTitleMenu {
//                Button("1") {
//                    
//                }
//                Button("2") {
//                    
//                }
//            }
        }
    }
}

#Preview {
    ToolBarPractice()
}
