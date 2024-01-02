//
//  ExploreViewModel.swift
//  AirbnbClone
//
//  Created by Sergey Petrosyan on 31.12.23.
//

import Foundation

class ExploreViewModel: ObservableObject {
    
    // MARK: — Private properties
    
    private let service: ExploreService
    private var allListings = [ListingItem]()
    @Published var listings = [ListingItem]()
    @Published var searchedLocation = ""
    
    // MARK: — Init
    
    init(service: ExploreService) {
        self.service = service
        Task { await fetchListings() }
    }
    
    // MARK: — Private methods
    
    private func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
            self.allListings = try await service.fetchListings()
        } catch let error {
            print("DEBUG: Failed to fetch listings with the following error: \(error)")
        }
    }
    
    func filterListingsByLocation() {
        let filteredListings = listings.filter {
            $0.city.lowercased() == searchedLocation.lowercased() ||
            $0.state.lowercased() == searchedLocation.lowercased()
        }
        DispatchQueue.main.async {
            self.listings = filteredListings.isEmpty ? self.allListings : filteredListings
        }
    }
}
