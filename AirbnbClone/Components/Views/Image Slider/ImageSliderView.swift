//
//  ImageSliderView.swift
//  AirbnbClone
//
//  Created by Sergey Petrosyan on 28.12.23.
//

import SwiftUI

struct ImageSliderView: View {
    @State var imageNames: [String]
    static let defaultImageNames = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
        "listing-5"
    ]
    
    var body: some View {
        TabView {
            ForEach(imageNames, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
    
    init(imageNames: [String] = ImageSliderView.defaultImageNames) {
        self.imageNames = imageNames
    }
}

#Preview {
    ImageSliderView(imageNames: [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
        "listing-5"
    ])
}
