//
//  ListingView.swift
//  Airbnb
//
//  Created by Ravi on 24/09/26.
//

import SwiftUI

struct ListingItemView: View {

    var images = ["property-1","property-2","property-3","property-4"]

    var body: some View {
        VStack(spacing: 8){
            // Image
            TabView{
                ForEach(images,id: \.self){ image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            // listing details
            HStack(alignment: .top){
                // Details
                VStack(alignment: .leading) {
                    Text("Miami,Florida")
                        .fontWeight(.bold)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3-10")
                        .foregroundStyle(.gray)
                    HStack{
                        Text("$567")
                            .fontWeight(.bold)
                        Text("Night")
                    }


                }
                Spacer()
                // Rating
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    Text("4.86")
                        .bold()
                }
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
