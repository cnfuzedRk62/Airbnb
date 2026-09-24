//
//  ListingDetailsView.swift
//  Airbnb
//
//  Created by Ravi on 24/09/26.
//

import SwiftUI

struct ListingDetailsView: View {
    var body: some View {
        ScrollView{
            ImagesSliderView()
                .frame(height: 320)
            VStack(alignment: .leading,spacing: 8){
                  Text("Miami Villa")
                    .font(.title)
                VStack(alignment: .leading) {
                    HStack(spacing: 2) {
                        Image(systemName: "star.fill")
                        Text("4.86")
                            .bold()
                        Text("-")
                        Text("28")
                        Text("Review")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    Text("Miami Florida")
                }
                .font(.caption)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding()

            Divider()

            HStack{
                VStack(alignment: .leading,spacing: 4) {
                    Text("Entire villa hosted by john Smith")
                        .font(.headline)
                        .frame(width: 250,alignment: .leading)
                    HStack(spacing:2){
                        Text("4 guests -")
                        Text("4 bedrooms -")
                        Text("4 beds -")
                        Text("3 baths")
                    }.font(.caption)
                }.frame(width: 250,alignment: .leading)

                Spacer()
                Image("profileDp")
                    .resizable()
                    .frame(width: 60,height: 60)
                    .scaledToFill()
                    .clipShape(Circle())
            }
            .padding()

            Divider()
        }
    }
}

#Preview {
    ListingDetailsView()
}
