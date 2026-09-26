//
//  ExploreView.swift
//  Airbnb
//
//  Created by Ravi on 24/09/26.
//

import SwiftUI

struct ExploreView: View {
    @State var isfilterTap : Bool = false
    var body: some View {
        NavigationStack{
            
            if isfilterTap{
                DestinationSearchView(isfilterTap: $isfilterTap)
            }else{
                VStack{
                    SearchAndFilterBar().onTapGesture {
                        withAnimation(.snappy){
                            isfilterTap.toggle()
                        }
                    }
                    ScrollView{
                        LazyVStack(spacing: 32){
                            ForEach(0...10,id: \.self){ listing in
                                NavigationLink(value: listing){
                                    ListingItemView().frame(height: 400)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                }
                                .foregroundStyle(.primary)
                            }
                        }
                    }
                    .padding()
                    .navigationDestination(for: Int.self) { items in
                        ListingDetailsView()
                    }
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
