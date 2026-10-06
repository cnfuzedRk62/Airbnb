//
//  ExploreService.swift
//  Airbnb
//
//  Created by Ravi on 30/09/26.
//

import Foundation

protocol CommonProtocol {
    func fetchListing() async throws -> [Listing]
    func login(email : String , password : String) async throws -> Bool
}


class Service : CommonProtocol{


    func fetchListing() async throws -> [Listing] {
        try await Task.sleep(nanoseconds: 1000000000)
        return DeveloperPreview.sharedInstance.listing
    }

    func login(email : String , password : String) async throws -> Bool {
        try await Task.sleep(nanoseconds: 1000000000)
        if email == "ravinderCoder11@gmail.com" && password == "123456"{
            return true
        }else{
            return false
        }

    }
}
