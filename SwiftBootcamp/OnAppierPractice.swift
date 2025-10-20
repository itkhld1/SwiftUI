//
//  OnAppierPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-19.
//

import SwiftUI

struct OnAppierPractice: View {
    
    @State var myText: String = "This is a text."
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                    myText = "This is a String"
                }
            })
            .navigationTitle("On Appier")
        }
    }
}

#Preview {
    OnAppierPractice()
}
