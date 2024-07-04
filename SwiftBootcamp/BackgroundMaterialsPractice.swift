//
//  BackgroundMaterialsPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-23.
//

import SwiftUI

struct BackgroundMaterialsPractice: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 40, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial).opacity(0.9)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("itkhld")
                .resizable()
                .frame(width: 700, height: 900)
        )
    }
}

#Preview {
    BackgroundMaterialsPractice()
}
