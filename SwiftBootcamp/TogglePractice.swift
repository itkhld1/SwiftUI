//
//  TogglePractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-14.
//

import SwiftUI

struct TogglePractice: View {
    
    @State var ToggleIsOn: Bool = false
    @State var BackColor: Bool = false
    @State var FontColor: Bool = false
    
    var body: some View {
        VStack{
            HStack {
                Text(ToggleIsOn ? "ON" : "OFF")
                    .frame(width: 100)
                    .foregroundColor(FontColor ? Color.white : Color.black)
            }
            .font(.title)
            .background(BackColor ? Color.red : Color.blue)
            .cornerRadius(20)
            .padding()
                        
            Toggle(isOn: $ToggleIsOn, label: {
                Text("Dark Mode")
            })
            .toggleStyle(SwitchToggleStyle(tint: Color.accentColor))
            Spacer()
        }
        .padding(.horizontal, 10)
    }
}

#Preview {
    TogglePractice()
}
