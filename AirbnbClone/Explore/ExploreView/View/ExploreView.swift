//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Sergey Petrosyan on 27.12.23.
//

import SwiftUI

struct ExploreView: View {
    @State private var showSearchView = false
    @StateObject private var exploreVM = ExploreViewModel(service: ExploreService())
    
    var body: some View {
        NavigationStack {
            if showSearchView {
                SearchView(showSearchView: $showSearchView)
            } else {
                Listings(showSearchView: $showSearchView, listings: $exploreVM.listings)
            }
        }
    }
}

#Preview {
    ExploreView()
}
