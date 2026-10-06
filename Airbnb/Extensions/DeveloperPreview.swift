//
//  DeveloperPreview.swift
//  Airbnb
//
//  Created by Ravi on 29/09/26.
//

import Foundation

class DeveloperPreview {

    static let sharedInstance = DeveloperPreview()

    var listing: [Listing] = [

        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "profileDp",
            numberOfBedrooms: 4,
            numberOfGuests: 3,
            numberOfBeds: 4,
            pricePerNight: 557,
            latitude: 25.7850,
            longitude: -80.1936,
            imagesUrls: ["property-1","property-2","property-3","property-4"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.50,
            features: [.selfCheckIn, .superHost],
            amenties: [.wifi, .balcony, .alarmSystem, .kitchen, .office],
            type: .villa
        ),

        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Emily Johnson",
            ownerImageUrl: "profileDp",
            numberOfBedrooms: 2,
            numberOfGuests: 4,
            numberOfBeds: 2,
            pricePerNight: 245,
            latitude: 34.0522,
            longitude: -118.2437,
            imagesUrls: ["property-4","property-1","property-3","property-2"],
            address: "458 Sunset Blvd",
            city: "Los Angeles",
            state: "California",
            title: "Modern LA Apartment",
            rating: 4.80,
            features: [.superHost, .selfCheckIn],
            amenties: [.wifi, .kitchen, .balcony, .pool],
            type: .apertment
        ),

        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Michael Brown",
            ownerImageUrl: "profileDp",
            numberOfBedrooms: 3,
            numberOfGuests: 6,
            numberOfBeds: 4,
            pricePerNight: 389,
            latitude: 40.7128,
            longitude: -74.0060,
            imagesUrls: ["property-3","property-2","property-4"],
            address: "78 Broadway Ave",
            city: "New York",
            state: "New York",
            title: "Luxury Manhattan Home",
            rating: 4.65,
            features: [.superHost],
            amenties: [.wifi, .office, .alarmSystem],
            type: .house
        ),

        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Sophia Williams",
            ownerImageUrl: "profileDp",
            numberOfBedrooms: 1,
            numberOfGuests: 2,
            numberOfBeds: 1,
            pricePerNight: 175,
            latitude: 41.8781,
            longitude: -87.6298,
            imagesUrls: ["property-4","property-3","property-2","property-1"],
            address: "210 Lake Street",
            city: "Chicago",
            state: "Illinois",
            title: "Cozy Chicago Studio",
            rating: 4.35,
            features: [.selfCheckIn],
            amenties: [.wifi, .kitchen, .balcony],
            type: .apertment
        ),

        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Daniel Wilson",
            ownerImageUrl: "profileDp",
            numberOfBedrooms: 5,
            numberOfGuests: 8,
            numberOfBeds: 6,
            pricePerNight: 725,
            latitude: 25.7617,
            longitude: -80.1918,
            imagesUrls: ["property-1","property-2","property-3","property-4"],
            address: "92 Ocean Drive",
            city: "Miami",
            state: "Florida",
            title: "Oceanfront Luxury Villa",
            rating: 4.95,
            features: [.superHost, .selfCheckIn],
            amenties: [ .pool, .kitchen, .alarmSystem],
            type: .villa
        ),

        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Olivia Martinez",
            ownerImageUrl: "profileDp",
            numberOfBedrooms: 3,
            numberOfGuests: 5,
            numberOfBeds: 3,
            pricePerNight: 310,
            latitude: 37.7749,
            longitude: -122.4194,
            imagesUrls: ["property-3","property-4"],
            address: "315 Market Street",
            city: "San Francisco",
            state: "California",
            title: "Downtown San Francisco Home",
            rating: 4.72,
            features: [.superHost],
            amenties: [.wifi, .kitchen, .balcony],
            type: .house
        ),

        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "James Anderson",
            ownerImageUrl: "profileDp",
            numberOfBedrooms: 2,
            numberOfGuests: 4,
            numberOfBeds: 3,
            pricePerNight: 265,
            latitude: 36.1699,
            longitude: -115.1398,
            imagesUrls: ["property-3","property-2","property-1","property-4"],
            address: "845 Desert Road",
            city: "Las Vegas",
            state: "Nevada",
            title: "Las Vegas Retreat",
            rating: 4.40,
            features: [.selfCheckIn],
            amenties: [.wifi, .pool, .kitchen, .alarmSystem],
            type: .villa
        ),

        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Emma Davis",
            ownerImageUrl: "profileDp",
            numberOfBedrooms: 4,
            numberOfGuests: 7,
            numberOfBeds: 5,
            pricePerNight: 480,
            latitude: 32.7767,
            longitude: -96.7970,
            imagesUrls: ["property-1","property-3"],
            address: "560 Oak Avenue",
            city: "Dallas",
            state: "Texas",
            title: "Spacious Dallas Retreat",
            rating: 4.60,
            features: [.superHost, .selfCheckIn],
            amenties: [ .balcony, .pool],
            type: .house
        )
    ]
}
