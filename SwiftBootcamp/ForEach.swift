//
//  ForEach.swift
//  SwiftBootcamp
//
//  Created by itkhld on 11.05.2024.
//

import SwiftUI

struct ForEach: View {
    
    let data: [String] = ["One", "Two", "Three"]
    let string: String = "SWiftUI."
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
        }
    }
}

#Preview {
    ForEach()
}
