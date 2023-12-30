//
//  WhishlistsView.swift
//  AirbnbClone
//
//  Created by Sergey Petrosyan on 30.12.23.
//

import SwiftUI

struct WishlistsView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Log in to view you wishlists")
                        .font(.headline)
                    Text("You can create, view or edit wishlists once you've logged in.")
                        .font(.footnote)
                }
                
                Button("Log in") {
                    
                }
                .modifier(AirbnbStyleActionButtonViewModifier())
            }
            .navigationTitle("Wishlists")
        }
    }
}

#Preview {
    WishlistsView()
}
