//
//  Listings.swift
//  AirbnbClone
//
//  Created by Sergey Petrosyan on 29.12.23.
//

import SwiftUI

struct Listings: View {
    @Binding var showSearchView: Bool
    @Binding var listings: [ListingItem]
    @State var exploreVM: ExploreViewModel
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 32) {
                SearchBar(location: $exploreVM.searchedLocation)
                    .onTapGesture {
                        withAnimation(.snappy) {
                            showSearchView.toggle()
                        }
                    }
                ForEach(listings) { listing in
                    NavigationLink(value: listing) {
                        ListingItemView(listingItem: listing)
                            .frame(height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
            }
        }
        .navigationDestination(for: ListingItem.self) { listing in
            ListingDetailView(listing: listing)
                .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    Listings(showSearchView: .constant(false), listings: .constant([]), exploreVM: ExploreViewModel(service: ExploreService()))
}
