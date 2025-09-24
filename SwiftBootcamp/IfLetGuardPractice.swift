//
//  IfLetGuardPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-19.
//

import SwiftUI

struct IfLetGuardPractice: View {
    
    @State var displayedText: String? = nil
    @State var isLoading: Bool = false
    @State var currentUserID: String? = "Itkhld"
    
    var body: some View {
        NavigationView {
            VStack {
                Text("This is the first line of code.")
                
                if let text = displayedText  {
                    Text(text)
                        .font(.title2)
                        .multilineTextAlignment(.center)
                }
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("SafeCoding")
            .onAppear {
                loadDate()
            }
        }
    }
    func loadDate() {
        if let UserID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                displayedText = "This is a new data. the userID is \(UserID)"
                isLoading = false
            }
        } else {
            displayedText = "Error. there is no User ID".uppercased()
        }
    }
}

#Preview {
    IfLetGuardPractice()
}
