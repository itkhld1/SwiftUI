//
//  ControlGroupViewPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-07-03.
//

import SwiftUI

struct ControlGroupMenuPractice: View {
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            Menu("My Menu") {
                ControlGroup {
                    Button("Like") {
                        
                    }
                    Button("Comment") {
                        
                    }
                    Button("Share") {
                        
                    }
                }
                Button("Block") {
                    
                }
                Menu("Report") {
                    Button("18+ Content") {
                        
                    }
                    Button("Violence") {
                        
                    }
                    Button("Spam") {
                        
                    }
                }
            }
        }
    }
}

#Preview {
    ControlGroupMenuPractice()
}
