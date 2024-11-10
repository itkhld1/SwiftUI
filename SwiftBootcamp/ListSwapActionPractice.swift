//
//  ListSwapActionPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-28.
//

import SwiftUI

struct ListSwapActionPractice: View {
    var body: some View {
        NavigationView {
            List {
                Text("Watermelon")
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Delete") {
                            
                        }
                        .tint(.red)
                        
                        Button("Archive") {
                            
                        }
                        .tint(.blue)
                        
                        Button("Save") {
                            
                        }
                        .tint(.green)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button("Spam") {
                            
                        }
                        .tint(.red)
                    }
            }
            .navigationTitle("Fruits")
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

#Preview {
    ListSwapActionPractice()
}
