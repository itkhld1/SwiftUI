//
//  NavigationSplitViewPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-07-02.
//

import SwiftUI

struct NavigationSplitViewPractice: View {
    
    @State private var visibility: NavigationSplitViewVisibility = .all
    
    var body: some View {
        NavigationSplitView(columnVisibility: $visibility) {
//            List {
//                ForEach(foodCategory.allCases, id: \.rawValue) { category in
//                    Text(category.rawValue.capitalized)
//                }
//            }
        } content: {
            Color.blue.opacity(0.4).ignoresSafeArea()
        } detail: {
            Color.gray.opacity(0.4).ignoresSafeArea()
        }
        .navigationSplitViewStyle(.prominentDetail)
    }
}

#Preview {
    NavigationSplitViewPractice()
}

enum foodCategory {
    case fruits, vegetables, meats
}
