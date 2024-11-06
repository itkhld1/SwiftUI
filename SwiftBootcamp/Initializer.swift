//
//  Initializer.swift
//  SwiftBootcamp
//
//  Created by itkhld on 11.05.2024.
//

import SwiftUI

struct Initializer: View {
    var BackgroundColor: Color
    let count: Int
    var kind: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count

        if fruit == .apple {
            self.kind = "Apples"
            self.BackgroundColor = .green
        }
        else if fruit == .grape {
            self.kind = "Grapes"
            self.BackgroundColor = .purple
        }
        else if fruit == .cherry {
            self.kind = "Cherries"
            self.BackgroundColor = .red
        }
        else {
            self.kind = "Oranges"
            self.BackgroundColor = .orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
        case grape
        case cherry
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(kind)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(BackgroundColor)
        .cornerRadius(10)
        .shadow(radius: 15)
    }
}

#Preview {
    VStack(spacing: 20) {
        Initializer(count: 10, fruit: .orange)
        Initializer(count: 20, fruit: .apple)
        Initializer(count: 30, fruit: .grape)
        Initializer(count: 40, fruit: .cherry)
    }
}
