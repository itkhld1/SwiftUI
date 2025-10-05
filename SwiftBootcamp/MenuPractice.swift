//
//  MenuPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-30.
//

import SwiftUI

struct MenuPractice: View {
    var body: some View {
        Menu("Pick me!") {
            Button("One") {
                
            }
            Button("Two") {
                
            }
            Button("Three") {
                
            }
        }
        .menuOrder(.fixed)
    }
}

#Preview {
    MenuPractice()
}
