//
//  ItemRatingView.swift
//  AirbnbClone
//
//  Created by Sergey Petrosyan on 28.12.23.
//

import SwiftUI

struct ItemRatingView: View {
    @State var rating: Double
    
    var body: some View {
        HStack {
            Image(systemName: "star.fill")
            Text("\(String(rating))")
        }
        .font(.subheadline)
        .fontWeight(.bold)
        .foregroundStyle(.black)
    }
}

#Preview {
    ItemRatingView(rating: 4.86)
}
