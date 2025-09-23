//
//  gridViewPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-07-03.
//

import SwiftUI

struct gridViewPractice: View {
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            Grid(alignment: .center, horizontalSpacing: 20, verticalSpacing: 20) {
                GridRow {
                    cell(int: 1)
                    cell(int: 0)
                    cell(int: 3)
                }
                GridRow {
                    cell(int: 0)
                    cell(int: 2)
                    cell(int: 0)
                }
                GridRow {
                    cell(int: 1)
                    cell(int: 0)
                    cell(int: 3)
                }
            }
        }
    }
    private func cell(int: Int) -> some View {
        Text("\(int)")
            .font(.callout)
            .padding()
            .frame(width: 41, height: 41)
            .background(Color.white)
            .shadow(radius: 10)
            
    }
}

#Preview {
    gridViewPractice()
}
