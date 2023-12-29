//
//  Listings.swift
//  AirbnbClone
//
//  Created by Sergey Petrosyan on 29.12.23.
//

import SwiftUI

struct Listings: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 32) {
                SearchBar()
                ForEach(0 ..< 10) { listing in
                    NavigationLink(value: listing) {
                        ListingItemView()
                            .frame(height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
            }
        }
        .navigationDestination(for: Int.self) { listing in
            ListingDetailView()
                .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    Listings()
}
