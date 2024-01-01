//
//  Listings.swift
//  AirbnbClone
//
//  Created by Sergey Petrosyan on 28.12.23.
//

import SwiftUI

struct ListingItemView: View {
    let listingItem: ListingItem
    var body: some View {
        VStack(spacing: 8) {
            ImageSliderView(imageNames: listingItem.imageURLs)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            HStack(alignment: .top, spacing: 0) {
                VStack(alignment: .leading) {
                    Text(listingItem.address)
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                    
                    Text("12 min away")
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.lightGray))
                    
                    Text("Nov 3 - 10")
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.lightGray))
                    
                    Text("$\(listingItem.pricePerNight) a night")
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                }
                
                Spacer()
                
                ItemRatingView(rating: listingItem.rating)
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView(listingItem: DeveloperPreview.listings[0])
}
