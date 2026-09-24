//
//  ExploreView.swift
//  Airbnb
//
//  Created by Ravi on 24/09/26.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            VStack{
                SearchAndFilterBar()
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

#Preview {
    ExploreView()
}
