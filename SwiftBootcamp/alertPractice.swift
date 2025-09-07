//
//  alertPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-05-21.
//

import SwiftUI

struct alertPractice: View {
    
    @State var showAlert: Bool = false
    @State var alertType: alerts? = nil
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.orange
    
    enum alerts {
        case success
        case faild
    }
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                Button("Button1") {
                    alertType = .faild
//                    alertTitle = "Error Uploading Vedio!"
//                    alertMessage = "The vedio cannot upload"
                    showAlert.toggle()
                }
                Button("Button2") {
                    alertType = .success
//                    alertTitle = "Error Uploading Picture!"
//                    alertMessage = "The pic cannot upload"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {
                getAlert()
        })
    }
}
    
    func getAlert() -> Alert {
        switch alertType {
        case .faild:
            return Alert(title: Text("Failed"))
        case .success:
            return Alert(title: Text("Success"), message: nil, dismissButton: .default(Text("OK"), action: {
                backgroundColor = .brown
            }))
        default:
            return Alert(title: Text("ERROR"))
        }
        
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("OK"))
//        )
//        return Alert(
//            title: Text("Error"),
//            message: Text("Not Found"),
//            primaryButton: .cancel(),
//            secondaryButton: .destructive(Text("delete"), action: {
//                backgroundColor = .red
//            }))
    }
}

#Preview {
    alertPractice()
}
