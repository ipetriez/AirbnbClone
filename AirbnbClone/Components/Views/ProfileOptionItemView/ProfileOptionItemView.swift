//
//  ProfileOptionItemView.swift
//  AirbnbClone
//
//  Created by Sergey Petrosyan on 30.12.23.
//

import SwiftUI

struct ProfileOptionItemView: View {
    let imageName: String
    let title: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                Text(title)
                    .font(.subheadline)
                Spacer()
                Image(systemName: "chevron.right")
            }
            Divider()
        }
    }
}

#Preview {
    ProfileOptionItemView(imageName: "gear", title: "Settings")
}
