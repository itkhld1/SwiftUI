//
//  ModelPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-19.
//

import SwiftUI


struct userModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
}

struct ModelPractice: View {
    
    @State var users: [userModel] = [
        userModel(displayName: "Khalid", userName: "itkhld", followerCount: 140000),
        userModel(displayName: "Amir", userName: "Khani21", followerCount: 150000),
        userModel(displayName: "Kaveh", userName: "kaveGh", followerCount: 200000)
    ]
    
    var body: some View {
        NavigationView {
            List {
                HStack(spacing: 20.0) {
                    Circle()
                        .frame(width: 35, height: 35)
                    VStack(alignment: .leading) {
                        Text("Khalid")
                        Text("@itkhld")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    Spacer()
                    Image(systemName: "checkmark.seal.fill")
                        .foregroundColor(.blue)
                    VStack {
                        Text("14K")
                        Text("Followers")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }

                }
                .padding(.vertical, 10)
                
                HStack(spacing: 20.0) {
                    Circle()
                        .frame(width: 35, height: 35)
                    VStack(alignment: .leading) {
                        Text("Amir")
                        Text("Khani21")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    Spacer()
                    Image(systemName: "checkmark.seal.fill")
                        .foregroundColor(.blue)
                    
                    VStack {
                        Text("15K")
                        Text("Followers")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                }
                .padding(.vertical, 10)
                
                HStack(spacing: 20.0) {
                    Circle()
                        .frame(width: 35, height: 35)
                    VStack(alignment: .leading) {
                        Text("Kaveh")
                        Text("kaveGh")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    Spacer()
                    VStack {
                        Text("20K")
                        Text("Followers")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                }
                .padding(.vertical, 10)
            }
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelPractice()
}
