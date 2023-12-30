//
//  DateSearchField.swift
//  AirbnbClone
//
//  Created by Sergey Petrosyan on 30.12.23.
//

import SwiftUI

struct DateSearchField: View {
    @Binding var dateFrom: Date
    @Binding var dateTo: Date
    
    var body: some View {
        HStack {
            Text("When's your trip?")
                .font(.title2)
                .fontWeight(.semibold)
        }
        
        VStack {
            DatePicker("From", selection: $dateFrom)
            Divider()
            DatePicker("From", selection: $dateTo)
        }
        .foregroundStyle(.gray)
    }
}

#Preview {
    DateSearchField(dateFrom: .constant(Date()), dateTo: .constant(Date()))
}
