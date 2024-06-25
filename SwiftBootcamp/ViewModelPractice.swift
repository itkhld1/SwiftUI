//
//  ViewModelPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-21.
//

import SwiftUI

struct fruitsModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

struct ViewModelPractice: View {
    
    @State var fruitArray: [fruitsModel] = []
    
    
    var body: some View {
        NavigationView {
            List {
                // I CANNOT USE FOREACH, I DON'T KNOW WHY BUT I WRITE THE FOREACH LINE OF CODE CORRECT BUT I GOT AN ERROR
//                ForEach(fruitArray) { fruit in
//                    HStack {
//                        Text("\(fruit.count)")
//                            .foregroundColor(.red)
//                        Text("\(fruit.name)")
//                            .font(.headline)
//                            .bold()
//                    }
//                }
                HStack {
                    Text("5")
                        .foregroundColor(.red)
                    Text("Bananas")
                        .font(.headline)
                }
                //.onDelete(perform: deleteFruit)
            }
            .navigationTitle("Fruits List")
            .onAppear{
                getFruits()
            }
        }
    }
    func getFruits() {
        let fruit1 = fruitsModel(name: "Apple", count: 3)
        let fruit2 = fruitsModel(name: "Melon", count: 5)
        let fruit3 = fruitsModel(name: "Cherry", count: 20)
        
        fruitArray.append(fruit1)
        fruitArray.append(fruit2)
        fruitArray.append(fruit3)
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

#Preview {
    ViewModelPractice()
}
