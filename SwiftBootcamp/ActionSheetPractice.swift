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
                Text("For you")
                    .font(.title)
                    .bold()
                Image(systemName: "chevron.down")
                Spacer()
                
                Image(systemName: "heart")
                    .font(.title)
                Image(systemName: "message.badge")
                    .font(.system(size: 25))
            }
            .padding()
            
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
                    Image(systemName: "checkmark.seal.fill")
                        .foregroundColor(.blue)
                        .font(.callout)
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
                .cornerRadius(4)
                .padding(.horizontal,1)
                
                
                HStack(spacing: 20.0) {
                    Image(systemName: "heart")
                        .font(.title)
                    Image(systemName: "message")
                    Image(systemName: "paperplane")
                    Spacer()
                    Image(systemName: "square.and.arrow.down")
                }
                .font(.system(size: 25))
                .padding(.horizontal, 10)
                .padding(.vertical, 10)
            }
            .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
        }
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
        .preferredColorScheme(.light)
}
