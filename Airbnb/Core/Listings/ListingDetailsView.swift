//
//  ListingDetailsView.swift
//  Airbnb
//
//  Created by Ravi on 24/09/26.
//

import SwiftUI
import MapKit

struct ListingDetailsView: View {

    var body: some View {
        ScrollView{

                ImagesSliderView()
                    .frame(height: 320)
            // Prporty description View
            VStack(alignment: .leading,spacing: 16){
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
            // Propery owner View
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

            // Check in view
            VStack(alignment: .leading,spacing: 16){
                ForEach(0..<2){ items in
                    HStack(spacing: 12){
                        Image(systemName: "door.left.hand.open")
                        VStack(alignment: .leading,spacing: 2) {
                            Text("Self check-in")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("superhost are experienced,highly rated hosts who are commited to providing great stars for guests.")
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
                        ForEach(1..<5){ items in
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
                    ForEach(0..<5){ features in
                        HStack(){
                            Image(systemName: "wifi")
                                .frame(width: 30)
                            Text("Wifi")
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

        }
        .ignoresSafeArea()
        .padding(.bottom,80)
        .overlay(alignment: .bottom) {
            VStack(alignment: .leading,spacing: 16) {
                Divider()
                    .padding(.bottom)
                HStack(){
                    VStack(alignment: .leading){
                        Text("$500")
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
    ListingDetailsView()
}
