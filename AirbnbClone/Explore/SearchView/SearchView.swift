//
//  SearchView.swift
//  AirbnbClone
//
//  Created by Sergey Petrosyan on 29.12.23.
//

import SwiftUI

struct SearchView: View {
    
    // MARK: — SearchLocations
    
    enum SearchLocation {
        case location, dates, guests
    }
    
    // MARK: — Bindings
    
    @Binding var showSearchView: Bool
    
    // MARK: — State properties
    
    @State private var destination = ""
    @State private var dateFrom = Date()
    @State private var dateTo = Date()
    @State private var numberOfGuests = 0
    @State private var selectedSearchLocation: SearchLocation = .location
    
    var body: some View {
        VStack {
            
            // MARK: — Close button
            
            HStack {
                Button(action: {
                    withAnimation(.snappy) {
                        showSearchView = false
                    }
                }, label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                })
                Spacer()
                
                if !destination.isEmpty {
                    Button("Clear") {
                        destination = ""
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
            .padding()
            
            // MARK: — Where to?
            
            VStack(alignment: .leading) {
                if selectedSearchLocation == .location {
                    DestinationSearchField(destination: $destination)
                } else {
                    CollapsedSearchField(title: "Where to", description: "Add destination ")
                }
            }
            .frame(height: selectedSearchLocation == .location ? 120 : 64)
            .modifier(CollapsibleFieldViewModifier())
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedSearchLocation = .location
                }
            }
            
            // MARK: — When's your trip?
            
            VStack(alignment: .leading) {
                if selectedSearchLocation == .dates {
                    DateSearchField(dateFrom: $dateFrom, dateTo: $dateTo)
                } else {
                    CollapsedSearchField(title: "When", description: "Add dates")
                }
            }
            .frame(height: selectedSearchLocation == .dates ? 180 : 64)
            .modifier(CollapsibleFieldViewModifier())
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedSearchLocation = .dates
                }
            }
            
            // MARK: — Who are you going with?
            
            VStack(alignment: .leading) {
                if selectedSearchLocation == .guests {
                    GuestsSearchField(numberOfGuests: $numberOfGuests)
                } else {
                    CollapsedSearchField(title: "Who", description: "Add guests")
                }
            }
            .frame(height: selectedSearchLocation == .guests ? 120 : 64)
            .modifier(CollapsibleFieldViewModifier())
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedSearchLocation = .guests
                }
            }
            
            Spacer()
        }
    }
}

#Preview {
    SearchView(showSearchView: .constant(false))
}
