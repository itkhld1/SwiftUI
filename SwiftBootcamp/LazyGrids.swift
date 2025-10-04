//
//  LazyGrids.swift
//  SwiftBootcamp
//
//  Created by itkhld on 12.05.2024.
//

import SwiftUI

struct LazyGrids: View {
    let comulns: [GridItem] = [
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        LazyVGrid(columns: comulns) {
            Circle()
            Circle()
            Circle()
            Circle()
            Circle()
        }
    }
}

#Preview {
    LazyGrids()
}
