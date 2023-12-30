//
//  CollapsibleFieldViewModifier.swift
//  AirbnbClone
//
//  Created by Sergey Petrosyan on 30.12.23.
//

import SwiftUI

struct CollapsibleFieldViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .shadow(radius: 10)
            .padding()
    }
}
