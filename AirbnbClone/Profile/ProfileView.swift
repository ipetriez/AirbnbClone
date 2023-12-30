//
//  ProfileView.swift
//  AirbnbClone
//
//  Created by Sergey Petrosyan on 30.12.23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text("Log in to start planning your next trip.")
                }
                
                Button("Log in") {
                    
                }
                .foregroundStyle(.white)
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 360, height: 48)
                .background(.pink)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                
                HStack {
                    Text("Don't have an account?")
                    Text("Sign up")
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.caption)
            }
            
            VStack(spacing: 24) {
                ProfileOptionItemView(imageName: "gear", title: "Settings")
                ProfileOptionItemView(imageName: "gear", title: "Accessibility")
                ProfileOptionItemView(imageName: "questionmark.circle", title: "Help Center")
            }
            .padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
