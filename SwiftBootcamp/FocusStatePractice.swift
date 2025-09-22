//
//  FocusStatePractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-28.
//

import SwiftUI

struct FocusStatePractice: View {
    
    enum OnboardingField: Hashable{
        case username
        case password
    }
    
    //@FocusState private var isUsernameFocus: Bool
    @State var UserName: String = ""
    //@FocusState private var isPasswordFocus: Bool
    @State var Password: String = ""
    @FocusState private var fieldInFocus: OnboardingField?
    
    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea()
            VStack {
                Text("SIGN UP / LOG IN")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 40)
                
                TextField("User Name or Email", text: $UserName)
                    .focused($fieldInFocus, equals: .username)
                    //.focused($isUsernameFocus)
                    .padding(.leading)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(20)
                
                SecureField("Password", text: $Password)
                    .focused($fieldInFocus, equals: .password)
                    //.focused($isPasswordFocus)
                    .padding(.leading)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(20)

                HStack{
                    Button("SIGN UP 🚀") {
                        let usernameIsValid = !UserName.isEmpty
                        let passwordIsValid = !Password.isEmpty
                        if usernameIsValid && passwordIsValid {
                            print("SIGN UP")
                        } else if usernameIsValid {
                            fieldInFocus = .password
    //                        isUsernameFocus = true
    //                        isPasswordFocus = false
                        } else {
                            fieldInFocus = .username
    //                        isUsernameFocus = false
    //                        isPasswordFocus = true
                        }
                    }
                    
                    
    //                Button("PRESS TOGGLE") {
    //                    fieldInFocus. .toggle()
    //                }
                }
                //.buttonStyle(BorderedButtonStyle())
                .padding()
                .frame(width: 130, height: 50)
                .background(Color.white)
                .foregroundColor(.gray)
                .cornerRadius(40)
                .padding()
            }
            .padding(40)
        }
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
//                self.isUsernameFocus = true
//            }
//        }
    }
}

#Preview {
    FocusStatePractice()
}
