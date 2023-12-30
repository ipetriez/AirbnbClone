//
//  GuestsSearchField.swift
//  AirbnbClone
//
//  Created by Sergey Petrosyan on 30.12.23.
//

import SwiftUI

struct GuestsSearchField: View {
    @Binding var numberOfGuests: Int
    
    var body: some View {
        HStack {
            Text("Show seating map")
                .font(.title2)
                .fontWeight(.semibold)
        }
        
        Stepper {
            Text("\(numberOfGuests) Adults")
        } onIncrement: {
            numberOfGuests += 1
        } onDecrement: {
            guard numberOfGuests > 0 else { return }
            numberOfGuests -= 1
        }
    }
}

#Preview {
    GuestsSearchField(numberOfGuests: .constant(0))
}
