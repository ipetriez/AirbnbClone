//
//  CollapsedSearchField.swift
//  AirbnbClone
//
//  Created by Sergey Petrosyan on 29.12.23.
//

import SwiftUI

struct CollapsedSearchField: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }
            .font(.subheadline)
            .fontWeight(.semibold)
        }
    }
}

#Preview {
    CollapsedSearchField(title: "When", description: "Add dates")
}
