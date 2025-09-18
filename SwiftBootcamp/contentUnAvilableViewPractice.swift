//
//  contentUnAvilableViewPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-07-03.
//

import SwiftUI

struct contentUnAvilableViewPractice: View {
    
    @State private var searchInput: String = ""
    
    var body: some View {
        ContentUnavailableView.search(text: "\(searchInput)")

        Divider()
        
        ContentUnavailableView(
            "No Internet Connection",
            systemImage: "wifi.slash",
            description: Text("Please connect to internet and try again."))
        
    }
}

#Preview {
    contentUnAvilableViewPractice()
}
