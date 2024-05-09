//
//  Colors.swift
//  SwiftBootcamp
//
//  Created by itkhld on 9.05.2024.
//

import SwiftUI

struct Colors: View {
    var body: some View {

        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.primary
//                Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
            //.shadow(radius: 10)
            .shadow(color: Color("CustomColor"), radius:30, x: 8, y:10)
    }
}

#Preview {
    Colors()
}
