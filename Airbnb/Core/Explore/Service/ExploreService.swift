//
//  ExploreService.swift
//  Airbnb
//
//  Created by Ravi on 30/09/26.
//

import Foundation

protocol ListingProtocol {
    func fetchListing() async throws -> [Listing]
}

class ExploreService : ListingProtocol{

    func fetchListing() async throws -> [Listing] {
        try await Task.sleep(nanoseconds: 1000000000)
        return DeveloperPreview.sharedInstance.listing
    }
}
