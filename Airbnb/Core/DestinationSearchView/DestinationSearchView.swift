//
//  DestinationSearchView.swift
//  Airbnb
//
//  Created by Ravi on 26/09/26.
//

import SwiftUI

enum DestinationSearchOption {
    case location
    case dates
    case guests
}


struct DestinationSearchView: View {
    @State private var searchText : String = ""
    @Binding var isfilterTap : Bool
    @State private var selectedOption : DestinationSearchOption = .location

    var body: some View {
        VStack(spacing: 40){
            Button {
                withAnimation(.snappy){
                    isfilterTap.toggle()
                }
            } label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.black)
            }

            // where to
            VStack(alignment: .leading){
                if selectedOption == .location {
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)

                        HStack(){
                            Image(systemName: "magnifyingglass")
                                .imageScale(.small)

                            TextField("Search Destionation", text: $searchText)
                                .font(.subheadline)
                        }.frame(height: 44)
                        .padding(.horizontal)
                        .overlay{
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(lineWidth: 1.0)
                                .foregroundStyle(Color(.systemGray4))
                        }
                }else{
                    CollapsePickerView(title: "Where", description: "Add destination")
                        .padding(-15)
                }

            }.padding()
             .frame(height: selectedOption == .location ? 120 : 60)
              .background(.white)
              .clipShape(RoundedRectangle(cornerRadius: 12))
              .shadow(radius: 10)
              .onTapGesture {
                  withAnimation(.snappy){
                      selectedOption = .location
                  }
              }

            // date selection View
            VStack{
                if selectedOption == .dates {
                    HStack{
                        Text("Show expended View")
                        Spacer()
                    } .padding()

                }else{
                    CollapsePickerView(title: "When", description: "Add dates")
                }
            }
            .frame(height: selectedOption == .dates ? 120 : 60)
            .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy){selectedOption = .dates}
            }

            // number guests view

            VStack{
                if selectedOption == .guests {
                    HStack{
                        Text("Show expended View")
                        Spacer()
                    }
                    .padding()
                }else{
                    CollapsePickerView(title: "Who", description: "Add guests")
                }
            }
            .frame(height: selectedOption == .guests ? 120 : 60)
            .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy){ selectedOption = .guests}
            }
        }.padding()

    }
}

#Preview {
    DestinationSearchView(isfilterTap: .constant(false))
}
