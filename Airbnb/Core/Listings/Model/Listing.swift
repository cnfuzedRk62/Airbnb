//
//  Listing.swift
//  Airbnb
//
//  Created by Ravi on 29/09/26.
//

import Foundation

struct Listing: Identifiable,Codable,Hashable {
    let id : String
    let ownerUid: String
    let ownerName : String
    let ownerImageUrl: String
    let numberOfBedrooms: Int
    let numberOfGuests: Int
    let numberOfBeds: Int
    var pricePerNight : Int
    let latitude : Double
    let longitude : Double
    var imagesUrls : [String]
    let address : String
    let city : String
    let state : String
    let title : String
    let rating  :Double
    var features : [ListingFeatures]
    var amenties : [ListingAmenities]
    let type : ListingType
}

enum ListingFeatures : Int, Codable, Identifiable, Hashable{
    case selfCheckIn
    case superHost

    var imageName : String {
        switch self {
        case .selfCheckIn : return "door.left.hand.open"
        case .superHost : return "medal"
        }
    }

    var title: String {
        switch self {
        case .selfCheckIn : return "Self check-in"
        case .superHost : return "Superhost"
        }

    }

    var subTitle: String {
        switch self {
        case .selfCheckIn : return "Check yourself in with the keypad."
        case .superHost : return "Superhost are experienced, highly rated hosts who are commited to avoiding greate stars for guests."
        }


    }

    var id : Int {return self.rawValue}
}

enum ListingAmenities : Int,Identifiable,Codable, Hashable {

    case pool
    case kitchen
    case wifi
    case laundary
    case tv
    case alarmSystem
    case office
    case balcony

    var title: String {
        switch self {
        case .pool : return "Pool"
        case .kitchen : return "Kitchen"
        case .wifi : return "Wifi"
        case .laundary : return "Laundary"
        case .tv : return "Tv"
        case .alarmSystem : return "AlarmSystem"
        case . office : return "Office"
        case . balcony : return "Balcony"
        }
    }

    var imageName : String {
        switch self {
        case .pool: return "figure.pool.swim"
        case .kitchen : return "fork.knife"
        case .wifi : return "wifi"
        case .laundary : return "washer"
        case .tv : return "tv"
        case .alarmSystem : return "checkerboard.shield"
        case .office : return "pencil.and.ruler.fill"
        case .balcony : return "building"
        }

    }

    var id : Int {return self.rawValue}
}

enum ListingType : Int,Codable,Hashable,Identifiable {
    case apertment
    case villa
    case townHouse
    case house

    var description : String {
        switch self {
        case .apertment : return "Apartment"
        case .house : return "House"
        case .townHouse : return "Town Home"
        case . villa : return "Villa"

        }
    }

    var id: Int {return self.rawValue}
}
