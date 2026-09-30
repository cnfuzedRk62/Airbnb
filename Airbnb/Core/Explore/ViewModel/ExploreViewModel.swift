//
//  ExploreViewModel.swift
//  Airbnb
//
//  Created by Ravi on 30/09/26.
//

import Foundation
import Combine

class ExploreViewModel: ObservableObject{

    @Published var listing = [Listing]()
    let service : ListingProtocol

    init(service: ListingProtocol) {
        self.service = service
        Task{ await fetchListing()}
    }

    func fetchListing() async {
        do{
            listing = try await service.fetchListing()

        }catch{
            print("Error in fetching Listing:\(error.localizedDescription)")

        }
    }

}

