//
//  Listings.swift
//  AirbnbClone
//
//  Created by Sergey Petrosyan on 28.12.23.
//

import SwiftUI

struct ListingItemView: View {
    var imageNames = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
        "listing-5"
    ]
    
    var body: some View {
        VStack(spacing: 8) {
            TabView {
                ForEach(imageNames, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFit()
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
            HStack(alignment: .top, spacing: 0) {
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                    
                    Text("12 min away")
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.lightGray))
                    
                    Text("Nov 3 - 10")
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.lightGray))
                    
                    Text("$500.00 a night")
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                }
                
                Spacer()
                
                HStack {
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
