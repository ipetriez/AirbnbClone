//
//  ListingItem.swift
//  AirbnbClone
//
//  Created by Sergey Petrosyan on 30.12.23.
//

import Foundation

struct ListingItem: Identifiable, Codable, Hashable {
    let id: String
    let ownerUid: String
    let ownerName: String
    let ownerImageUrl: String
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfGuests: Int
    let numberOfBeds: Int
    var pricePerNight: Int
    let latitude: Double
    let longitude: Double
    var imageURLs: [String]
    let address: String
    let city: String
    let state: String
    let title: String
    var rating: Double
    var features: [ListingFeature]
    var amenities: [ListingAmenities]
    let type: ListingType
}

enum ListingFeature: Int, Codable, Identifiable, Hashable {
    case selfCheckIn, superhost
    var id: Int { self.rawValue }
    
    var title: String {
        switch self {
        case .selfCheckIn:
            return "Self check-in"
        case .superhost:
            return "Superhost"
        }
    }
    
    var subtitle: String {
        switch self {
        case .selfCheckIn:
            return "Check yourself in with the keypad."
        case .superhost:
            return "Superhosts are experienced, highly rated hosts, who are committed to providing great stars for guests."
        }
    }
    
    var imageName: String {
        switch self {
        case .selfCheckIn:
            return "door.left.hand.open"
        case .superhost:
            return "medal"
        }
    }
}

enum ListingAmenities: Int, Codable, Identifiable, Hashable {
    case pool, kitchen, wifi, laundry, tv, alarmSystem, office, balcony
    var id: Int { self.rawValue }
    var title: String {
        switch self {
        case .pool:
            return "Pool"
        case .kitchen:
            return "Kitchen"
        case .wifi:
            return "Wifi"
        case .laundry:
            return "Laundry"
        case .tv:
            return "TV"
        case .alarmSystem:
            return "Alarm System"
        case .office:
            return "Office"
        case .balcony:
            return "Balcony"
        }
    }
    
    var imageName: String {
        switch self {
        case .pool:
            return "figure.pool.swim"
        case .kitchen:
            return "fork.knife"
        case .wifi:
            return "wifi"
        case .laundry:
            return "washer"
        case .tv:
            return "tv"
        case .alarmSystem:
            return "checkerboard.shield"
        case .office:
            return "pencil.and.ruler.fill"
        case .balcony:
            return "building"
        }
    }
}

enum ListingType: Int, Codable, Identifiable, Hashable {
    case apartment, house, townHouse, villa
    var id: Int { self.rawValue }
    var description: String {
        switch self {
        case .apartment: return "Apartment"
        case .house:
            return "House"
        case .townHouse:
            return "Town Home"
        case .villa:
            return "Villa"
        }
    }
}

class DeveloperPreview {
    static var listings: [ListingItem] = [
        ListingItem(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 2,
            numberOfBeds: 5,
            pricePerNight: 350,
            latitude: 24.5234,
            longitude: 32.2342,
            imageURLs: [
                "listing-1",
                "listing-2",
                "listing-3",
                "listing-4",
                "listing-5"
            ],
            address: "Miami, Florida",
            city: "Miami",
            state: "FL",
            title: "Miami Villa",
            rating: 4.36,
            features: [.selfCheckIn, .superhost],
            amenities: [.alarmSystem, .balcony, .kitchen, .tv, .pool, .office, .wifi],
            type: .house),
        ListingItem(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Nick Petterson",
            ownerImageUrl: "profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 2,
            numberOfBeds: 5,
            pricePerNight: 350,
            latitude: 24.5234,
            longitude: 32.2342,
            imageURLs: [
                "listing-4",
                "listing-1",
                "listing-3",
                "listing-2",
                "listing-5"
            ],
            address: "Miami, Florida",
            city: "Miami",
            state: "FL",
            title: "Miami Villa",
            rating: 4.36,
            features: [.selfCheckIn, .superhost],
            amenities: [.alarmSystem, .balcony, .kitchen, .tv, .pool, .office, .wifi],
            type: .house),
        ListingItem(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Will Morris",
            ownerImageUrl: "profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 2,
            numberOfBeds: 5,
            pricePerNight: 350,
            latitude: 24.5234,
            longitude: 32.2342,
            imageURLs: [
                "listing-3",
                "listing-5",
                "listing-1",
                "listing-4",
                "listing-2"
            ],
            address: "Miami, Florida",
            city: "Miami",
            state: "FL",
            title: "Miami Villa",
            rating: 4.36,
            features: [.selfCheckIn, .superhost],
            amenities: [.alarmSystem, .balcony, .kitchen, .tv, .pool, .office, .wifi],
            type: .house),
        ListingItem(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Harry Smith",
            ownerImageUrl: "profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 2,
            numberOfBeds: 5,
            pricePerNight: 350,
            latitude: 24.5234,
            longitude: 32.2342,
            imageURLs: [
                "listing-4",
                "listing-5",
                "listing-2",
                "listing-1",
                "listing-3"
            ],
            address: "Miami, Florida",
            city: "Miami",
            state: "FL",
            title: "Miami Villa",
            rating: 4.36,
            features: [.selfCheckIn, .superhost],
            amenities: [.alarmSystem, .balcony, .kitchen, .tv, .pool, .office, .wifi],
            type: .house),
        ListingItem(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Merry Willson",
            ownerImageUrl: "profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 2,
            numberOfBeds: 5,
            pricePerNight: 350,
            latitude: 24.5234,
            longitude: 32.2342,
            imageURLs: [
                "listing-4",
                "listing-5",
                "listing-3",
                "listing-2",
                "listing-1"
            ],
            address: "Miami, Florida",
            city: "Miami",
            state: "FL",
            title: "Miami Villa",
            rating: 4.36,
            features: [.selfCheckIn, .superhost],
            amenities: [.alarmSystem, .balcony, .kitchen, .tv, .pool, .office, .wifi],
            type: .house),
        ListingItem(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Samantha Anderson",
            ownerImageUrl: "profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 2,
            numberOfBeds: 5,
            pricePerNight: 350,
            latitude: 24.5234,
            longitude: 32.2342,
            imageURLs: [
                "listing-5",
                "listing-4",
                "listing-3",
                "listing-1",
                "listing-2"
            ],
            address: "Miami, Florida",
            city: "Miami",
            state: "FL",
            title: "Miami Villa",
            rating: 4.36,
            features: [.selfCheckIn, .superhost],
            amenities: [.alarmSystem, .balcony, .kitchen, .tv, .pool, .office, .wifi],
            type: .house),
        ListingItem(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Claudia Jackson",
            ownerImageUrl: "profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 2,
            numberOfBeds: 5,
            pricePerNight: 350,
            latitude: 24.5234,
            longitude: 32.2342,
            imageURLs: [
                "listing-1",
                "listing-2",
                "listing-3",
                "listing-4",
                "listing-5"
            ],
            address: "Miami, Florida",
            city: "Miami",
            state: "FL",
            title: "Miami Villa",
            rating: 4.36,
            features: [.selfCheckIn, .superhost],
            amenities: [.alarmSystem, .balcony, .kitchen, .tv, .pool, .office, .wifi],
            type: .house)
    ]
}
