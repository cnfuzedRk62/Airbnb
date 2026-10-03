//
//  ListingDetailsView.swift
//  Airbnb
//
//  Created by Ravi on 24/09/26.
//

import SwiftUI
import MapKit

struct ListingDetailsView: View {
    let listing : Listing
    var body: some View {
        ScrollView{

            ImagesSliderView(listing: listing)
                    .frame(height: 320)
            // Prporty description View
            VStack(alignment: .leading,spacing: 16){
                Text(listing.title)
                    .font(.title)
                VStack(alignment: .leading) {
                    HStack(spacing: 2) {
                        Image(systemName: "star.fill")
                        Text("\(listing.rating.formatted(.number.precision(.fractionLength(0...2))))")
                            .bold()
                        Text("-")
                        Text("28")
                        Text("Review")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    Text("\(listing.city),\(listing.state)")
                }
                .font(.caption)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding()

            Divider()
            // Propery owner View
            HStack{
                VStack(alignment: .leading,spacing: 4) {
                    Text("Entire \(listing.type.description) hosted by \(listing.ownerName)")
                        .font(.headline)
                        .frame(width: 250,alignment: .leading)
                    HStack(spacing:2){
                        Text("\(listing.numberOfGuests) guests -")
                        Text("\(listing.numberOfBedrooms) bedrooms -")
                        Text("\(listing.numberOfBeds) beds -")
                        Text("3 baths")
                    }.font(.caption)
                }.frame(width: 250,alignment: .leading)

                Spacer()
                Image(listing.ownerImageUrl)
                    .resizable()
                    .frame(width: 60,height: 60)
                    .scaledToFill()
                    .clipShape(Circle())
            }
            .padding()
            Divider()

            // Check in view
            VStack(alignment: .leading,spacing: 16){
                ForEach(listing.features){ feature in
                    HStack(spacing: 12){
                        Image(systemName: feature.imageName)
                        VStack(alignment: .leading,spacing: 2) {
                            Text(feature.title)
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text(feature.subTitle)
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                }
            } .padding()

            Divider()

            // Bedrooms View
            VStack(alignment: .leading,spacing: 16){
                Text("Where You'll sleep")
                    .font(.headline)
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing: 15){
                        ForEach(1 ... listing.numberOfBedrooms, id: \.self){ items in
                            VStack(alignment: .leading, spacing:5){
                                Image(systemName: "bed.double")
                                Text("Bedroom\(items)")
                                    .font(.caption)
                            }
                            .frame(width: 132,height: 100)
                            .overlay {
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        }

                    }
                }
            }.padding()

            Divider()

            // lisiting emenities view
            VStack(alignment: .leading,spacing: 16){
                Text("What this place offers")
                    .font(.headline)
                ForEach(listing.amenties){ amenties in
                        HStack(){
                            Image(systemName: amenties.imageName)
                                .frame(width: 30)
                            Text("\(amenties.title)")
                                .font(.footnote)
                            Spacer()
                        }
                    }
            }
            .padding()

            Divider()

            VStack(alignment: .leading,spacing: 16){
                Text("Where you'll be")
                    .font(.headline)
               Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .padding()

        }.toolbarVisibility(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom,80)
        .overlay(alignment: .bottom) {
            VStack(alignment: .leading,spacing: 16) {
                Divider()
                    .padding(.bottom)
                HStack(){
                    VStack(alignment: .leading){
                        Text("$\(listing.pricePerNight)")
                            .font(.subheadline)
                            .fontWeight(.bold)
                        Text("Total before taxes")
                        Text("Oct 15-20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    Spacer()

                    Button {
                        print("Pressed")
                    } label: {
                        Text("Reserved")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .frame(width: 140,height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }

                }
                .padding(.horizontal,32)
            }.frame(height: 80)
            .background(.white)
        }
    }
}

#Preview {
    ListingDetailsView(listing: DeveloperPreview.sharedInstance.listing[2])
}
