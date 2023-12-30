//
//  AirbnbStyleActionButtonViewModifier.swift
//  AirbnbClone
//
//  Created by Sergey Petrosyan on 30.12.23.
//

import SwiftUI

struct AirbnbStyleActionButtonViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.white)
            .font(.subheadline)
            .fontWeight(.semibold)
            .frame(width: 360, height: 48)
            .background(.pink)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
