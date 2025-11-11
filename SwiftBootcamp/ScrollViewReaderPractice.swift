//
//  ScrollViewReaderPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-07-06.
//

import SwiftUI

struct ScrollViewReaderPractice: View {
    
    let items = Array(0..<100)
    
    var body: some View {
        ScrollView {
//            ForEach(items) { item in
//                    Text("This is item number\(item)")
//             }
        }
    }
}

#Preview {
    ScrollViewReaderPractice()
}



//
//import SwiftUI
//
//struct ScrollViewReaderExample: View {
//    // Sample data for the list
//    let items = Array(0..<100)
//    // State variable to hold the ID to scroll to
//    @State private var scrollToId: Int? = nil
//
//    var body: some View {
//        VStack {
//            // TextField to enter the ID to scroll to
//            HStack {
//                TextField("Enter item number", value: $scrollToId, formatter: NumberFormatter())
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
//                    .keyboardType(.numberPad)
//                    .padding()
//                
//                Button("Scroll to Item") {
//                    // This triggers the scroll to the entered ID
//                    if let id = scrollToId {
//                        withAnimation {
//                            proxy.scrollTo(id, anchor: .center)
//                        }
//                    }
//                }
//                .padding()
//            }
//            
//            // ScrollViewReader to programmatically scroll within the ScrollView
//            ScrollViewReader { proxy in
//                ScrollView {
//                    VStack(spacing: 10) {
//                        ForEach(items, id: \.self) { item in
//                            Text("Item \(item)")
//                                .font(.title)
//                                .frame(maxWidth: .infinity)
//                                .padding()
//                                .background(Color.blue.opacity(0.1))
//                                .cornerRadius(10)
//                                .id(item) // Tag each view with its item number
//                        }
//                    }
//                    .padding()
//                }
//                // Save the proxy for use in the Button action
//                .onAppear {
//                    self.proxy = proxy
//                }
//            }
//        }
//    }
//
//    // State variable to hold the ScrollViewProxy
//    @State private var proxy: ScrollViewProxy?
//}
//
//struct ScrollViewReaderExample_Previews: PreviewProvider {
//    static var previews: some View {
//        ScrollViewReaderExample()
//    }
//}
