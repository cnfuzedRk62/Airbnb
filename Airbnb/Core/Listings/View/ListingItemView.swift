//
//  ListingView.swift
//  Airbnb
//
//  Created by Ravi on 24/09/26.
//

import SwiftUI

struct ListingItemView: View {

    let listing : Listing

    var body: some View {
        VStack(spacing: 8){
            // Image
            ImagesSliderView(listing: listing)
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            // listing details
            HStack(alignment: .top){
                // Details
                VStack(alignment: .leading) {
                    Text("\(listing.city),\(listing.state)")
                        .fontWeight(.bold)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3-10")
                        .foregroundStyle(.gray)
                    HStack{
                        Text("\(listing.pricePerNight)")
                            .fontWeight(.bold)
                        Text("Night")
                    }


                }
                Spacer()
                // Rating
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    Text("\(listing.rating)")
                        .bold()
                }
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.sharedInstance.listing[0])
}
