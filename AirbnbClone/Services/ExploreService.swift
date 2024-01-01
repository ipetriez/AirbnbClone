//
//  ExploreService.swift
//  AirbnbClone
//
//  Created by Sergey Petrosyan on 31.12.23.
//

import Foundation

final class ExploreService {
    func fetchListings() async throws -> [ListingItem] {
        return DeveloperPreview.listings
    }
}
