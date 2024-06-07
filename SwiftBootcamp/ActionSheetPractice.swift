//
//  ActionSheetPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-05-21.
//

import SwiftUI

struct ActionSheetPractice: View {
    
    @State var showActionSheet: Bool = false
    @State var actionshetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        
        VStack {
            HStack {
                ZStack {
                    Image("itkhld2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                }
                    
                
                Text("Itkhld")
                Spacer()
                
                Button(action: {
                    actionshetOption = .isMyPost
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .accentColor(.primary)
            }
            .padding(.horizontal)
            
            ZStack{ 
                Image("itkhld")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            HStack {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
                    .padding(.horizontal, 5)
                Image(systemName: "message")
                    .padding(.horizontal, 2)
                Image(systemName: "paperplane.fill").padding(.horizontal,2)
                Spacer()
                Image(systemName: "square.and.arrow.down")
            }
            .font(.title2)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    
    func getActionSheet() -> ActionSheet {
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            // code for Share button
        }
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            // code for Report button
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            // code for Delete button
        }
        let cancelButton: ActionSheet.Button = .cancel()
        let title = Text("What would you like to do?")
        
        switch actionshetOption {
        case .isOtherPost:
            return ActionSheet(
                title: title,
                buttons: [shareButton, reportButton, cancelButton]
            )
        case .isMyPost:
            return ActionSheet(
                title: title,
                buttons: [deleteButton, cancelButton, reportButton, shareButton])
        }
        
        
//        let button1: ActionSheet.Button = .default(Text("Block"))
//        let button2: ActionSheet.Button = .destructive(Text("Submit"))
//        let button3: ActionSheet.Button = .cancel()
//        
//        
//        return ActionSheet(
//            title: Text("Title"),
//            message: Text("Message"),
//            buttons: [button1,button1, button1, button2, button3])
       // return ActionSheet(title: Text("this is the title"))
        
        
    }
}

#Preview {
    ActionSheetPractice()
}
