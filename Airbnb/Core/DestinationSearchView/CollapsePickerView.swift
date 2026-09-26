//
//  ExtractedView.swift
//  Airbnb
//
//  Created by Ravi on 26/09/26.
//

import SwiftUI

struct CollapsePickerView : View {

    let title : String
    let description : String

    var body : some View {

        VStack(){
            HStack{
                Text(title)
                    .foregroundStyle(.gray)
                Spacer()
                Text(description)
            }.padding()
                .fontWeight(.semibold)
                .font(.subheadline)

        }
    }

}

#Preview {
    CollapsePickerView(title: "Who", description: " Add guest")
}

