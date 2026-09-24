//
//  ImagesSliderView.swift
//  Airbnb
//
//  Created by Ravi on 24/09/26.
//

import SwiftUI

struct ImagesSliderView: View {

    var images = ["property-1","property-2","property-3","property-4"]

    var body: some View {
        // Image
        TabView{
            ForEach(images,id: \.self){ image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ImagesSliderView()
}
