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
    @Published var listings = [ListingItem]()
    
    // MARK: — Init
    
    init(service: ExploreService) {
        self.service = service
        Task { await fetchListings() }
    }
    
    // MARK: — Private methods
    
    private func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
        } catch let error {
            print("DEBUG: Failed to fetch listings with the following error: \(error)")
        }
    }
}
