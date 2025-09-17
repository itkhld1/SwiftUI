//
//  CheckboxView.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-28.
//

import SwiftUI

struct CheckboxView: View {
    @State private var isChecked: Bool = false

    var body: some View {
        VStack {
            Toggle(isOn: $isChecked) {
                Text("Agree to terms and conditions")
            }
            .toggleStyle(CheckboxToggleStyle())

            // Additional UI elements
            Button(action: {
                print("Checkbox is \(isChecked ? "checked" : "unchecked")")
            }) {
                Text("Submit")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.horizontal, 20)
        }
        .padding()
    }
}

struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 20, height: 20)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
            configuration.label
        }
    }
}

#Preview {
    CheckboxView()
}


