//
//  DatePackerPractice.swift
//  SwiftBootcamp
//
//  Created by itkhld on 2024-06-16.
//

import SwiftUI

struct DatePackerPractice: View {
    
    @State private var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("Selected Date is: ")
                .font(.headline)
                .fontWeight(.bold)
                .padding(.vertical, 0.5)
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            
            //DatePicker("Select a Date", selection: $selectedDate)
            //DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [.hourAndMinute, .date])
            DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endingDate)
                .accentColor(Color.green)
                .datePickerStyle(
                    //GraphicalDatePickerStyle()
                    //WheelDatePickerStyle()
                    //CompactDatePickerStyle()
                    DefaultDatePickerStyle()
            )
        }
        .padding(.horizontal, 20)
        Spacer()
    }
}

#Preview {
    DatePackerPractice()
}
