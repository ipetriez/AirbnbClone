//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Sergey Petrosyan on 27.12.23.
//

import SwiftUI

struct ExploreView: View {
    @State private var showSearchView = false
    
    var body: some View {
        NavigationStack {
            if showSearchView {
                SearchBar()
            } else {
                Listings()
            }
        }
    }
}

#Preview {
    ExploreView()
}
