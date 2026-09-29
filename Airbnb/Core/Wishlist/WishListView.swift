//
//  WishListView.swift
//  Airbnb
//
//  Created by Ravi on 29/09/26.
//

import SwiftUI

struct WishListView: View {
    var body: some View {
        NavigationStack{

            VStack(alignment: .leading,spacing: 32){
                
                VStack(alignment: .leading,spacing: 8){
                    Text("Log in to view your wishlist.")
                        .font(.headline)
                    Text("You can create,view or edit wishlist once you've logged in")
                        .font(.footnote)
                }

                Button {
                    print("Login")
                } label: {
                    Text("Login")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 350,height: 45)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }

                Spacer()
            }.padding()
            .navigationTitle("Wishlist")
        }
    }
}

#Preview {
    WishListView()
}
