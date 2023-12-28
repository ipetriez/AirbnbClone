//
//  Listings.swift
//  AirbnbClone
//
//  Created by Sergey Petrosyan on 28.12.23.
//

import SwiftUI

struct ListingItemView: View {
    var body: some View {
        VStack(spacing: 8) {
             Rectangle()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            HStack(alignment: .top, spacing: 0) {
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.bold)
                    
                    Text("12 min away")
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.lightGray))
                    
                    Text("Nov 3 - 10")
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.lightGray))
                    
                    Text("$500.00 a night")
                        .fontWeight(.bold)
                }
                
                Spacer()
                
                Image(systemName: "star.fill")
                
                Text("4.86")
                    .font(.subheadline)
                    .fontWeight(.bold)
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
