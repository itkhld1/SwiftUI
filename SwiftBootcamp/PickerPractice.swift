//
//  PickerPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-14.
//

import SwiftUI

struct PickerPractice: View {
  
  @State var selection: String = "Most Recent"
  let filterOptions: [String] = [
    "Most Recent", "Most Popular", "Most Liked"
  ]
  
  init() {
    UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
    
    let attributes: [NSAttributedString.Key: Any] = [
      .foregroundColor: UIColor.white
    ]
    UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
  }
  
  var body: some View {
    Picker(
      selection: $selection,
      label: Text("Picker"),
      content: {
//        ForEach(filterOptions) { option in  // Iterate over filterOptions array
//          Text(option)
//            .tag(option)
//        }
      }
    )
    .pickerStyle(SegmentedPickerStyle())
  }
}


#Preview {
    PickerPractice()
}
