//
//  ImagesSliderView.swift
//  Airbnb
//
//  Created by Ravi on 24/09/26.
//

import SwiftUI

struct ImagesSliderView: View {

    let listing : Listing

    var body: some View {
        // Image
        TabView{
            ForEach(listing.imagesUrls,id: \.self){ image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ImagesSliderView(listing : DeveloperPreview.sharedInstance.listing[0])
}
