//
//  SearchAndFilterBar.swift
//  Airbnb
//
//  Created by Ravi on 24/09/26.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {

        HStack{
            Image(systemName: "magnifyingglass")

            VStack(alignment: .leading,spacing: 2) {
                Text("Where to?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("Any where - Any Week - Add guests")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }

            Spacer()
            Button {
                print("Press")
            } label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            }
        }
        .padding(.horizontal)
        .padding(.vertical,10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(.gray)
                .shadow(color: .black.opacity(0.4), radius : 2)
        }
        .padding()
    }
}

#Preview {
    SearchAndFilterBar()
}
