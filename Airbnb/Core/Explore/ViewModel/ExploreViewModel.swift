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
    @Published var copyListing =  [Listing]()
    var destinationText = ""
    let service : CommonProtocol

    init(service: CommonProtocol) {
        self.service = service
        Task{ await fetchListing()}
    }

    func fetchListing() async {
        do{
            listing = try await service.fetchListing()
            copyListing = listing
        }catch{
            print("Error in fetching Listing:\(error.localizedDescription)")

        }
    }

    // filter Destination
    func filterList() {
        print("Destination search is \(destinationText)")
        let filterList = listing.filter{
            $0.city.lowercased() == destinationText.lowercased() || $0.state.lowercased() == destinationText.lowercased()
        }

        listing = filterList.isEmpty ? copyListing :  filterList


    }
}

