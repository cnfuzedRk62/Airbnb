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
    @ObservedObject var exploreVm : ExploreViewModel
    @State var searchText : String
    @Binding var isfilterTap : Bool
    @State private var selectedOption : DestinationSearchOption = .location
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var guestsCount = 0


    var body: some View {
        VStack(spacing: 40){

            HStack{
                Button {
                    withAnimation(.snappy){
                       isfilterTap.toggle()
                    }
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }

                Spacer()

                if !exploreVm.destinationText.isEmpty{
                    Button("Clear") {
                        exploreVm.destinationText = ""
                        exploreVm.filterList()
                        isfilterTap.toggle()
                    }.font(.title2)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                }

            }.padding(.horizontal)

            // where to
            VStack(alignment: .leading){
                if selectedOption == .location {
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)

                        HStack(){
                            Image(systemName: "magnifyingglass")
                                .imageScale(.small)

                            TextField("Search Destionation", text: $exploreVm.destinationText)
                                .font(.subheadline)
                                .onSubmit {
                                    exploreVm.filterList()
                                    isfilterTap.toggle()
                                }
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
             .modifier(CollapseViewModifier())
              .onTapGesture {
                  withAnimation(.snappy){
                      selectedOption = .location
                  }
              }

            // date selection View
            VStack{
                if selectedOption == .dates {
                    VStack(alignment: .leading) {
                        Text("When's your trip?")
                            .font(.title2)
                            .fontWeight(.semibold)

                        DatePicker("From", selection: $startDate,displayedComponents: .date)
                            .foregroundStyle(.gray)

                        Divider()

                        DatePicker("To", selection: $endDate,displayedComponents: .date)
                            .foregroundStyle(.gray)
                    }.padding()

                }else{
                    CollapsePickerView(title: "When", description: "Add dates")
                }
            }
            .frame(height: selectedOption == .dates ? 180 : 60)
            .modifier(CollapseViewModifier())
            .onTapGesture {
                withAnimation(.snappy){selectedOption = .dates}
            }

            // number guests view
            VStack{
                if selectedOption == .guests {

                    VStack(alignment: .leading){
                        Text("Who's coming?")
                            .font(.title2)
                            .fontWeight(.semibold)
                        Stepper{
                            Text("\(guestsCount) Adults")

                        }onIncrement: {
                            guestsCount += 1
                        }onDecrement: {
                            guard guestsCount > 0 else {return}
                                guestsCount -= 1

                        }
                    }.padding()

                }else{
                    CollapsePickerView(title: "Who", description: "Add guests")
                }
            }.modifier(CollapseViewModifier())
            .frame(height: selectedOption == .guests ? 120 : 60)
            .onTapGesture {
                withAnimation(.snappy){ selectedOption = .guests}
            }
            Spacer()
        }.padding()

    }

}

#Preview {
    DestinationSearchView(exploreVm: ExploreViewModel(service: Service()), searchText: "", isfilterTap: .constant(false))
}

// custom view modifier
struct CollapseViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .shadow(radius: 10)
    }

}
