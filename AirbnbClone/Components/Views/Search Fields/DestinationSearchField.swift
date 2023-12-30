//
//  DestinationSearchField.swift
//  AirbnbClone
//
//  Created by Sergey Petrosyan on 30.12.23.
//

import SwiftUI

struct DestinationSearchField: View {
    @Binding var destination: String
    
    var body: some View {
        Text("Where to?")
            .font(.title2)
            .fontWeight(.semibold)
        HStack {
            Image(systemName: "magnifyingglass")
                .imageScale(.small)
            
            TextField("Search destinations", text: $destination)
                .font(.subheadline)
        }
        .frame(height: 44)
        .padding(.horizontal)
        .overlay {
            RoundedRectangle(cornerRadius: 8)
                .stroke(lineWidth: 1)
                .foregroundStyle(Color(.systemGray4))
        }
    }
}

#Preview {
    DestinationSearchField(destination: .constant(""))
}
