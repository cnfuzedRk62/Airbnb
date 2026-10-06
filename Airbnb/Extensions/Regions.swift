//
//  Regions.swift
//  Airbnb
//
//  Created by Ravi on 30/09/26.
//

import CoreLocation

extension CLLocationCoordinate2D {

    static var losAngels = CLLocationCoordinate2D(latitude: 34.0549, longitude: -118.2426)
    static var miami = CLLocationCoordinate2D(latitude: 25.7602, longitude: -80.1959)
    static var newYork = CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060)
    static var chicago = CLLocationCoordinate2D(latitude: 41.8781, longitude: -87.6298)

    func getRegion(_ name : String) -> CLLocationCoordinate2D {
        switch name {
        case "Miami":
            return CLLocationCoordinate2D.miami
        case "Los Angeles":
            return CLLocationCoordinate2D.losAngels
        case "New York":
            return CLLocationCoordinate2D.newYork
        default:
            return CLLocationCoordinate2D.chicago
        }
    }

}
