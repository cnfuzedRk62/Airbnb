//
//  ProfileOptionRowView.swift
//  Airbnb
//
//  Created by Ravi on 29/09/26.
//

import SwiftUI

struct ProfileOptionRowView: View {
    let image : String
    let title : String
    var body: some View {
        VStack{
            HStack{
                Image(systemName: image)
                    .resizable()
                    .frame(width: 30,height: 30)
                Text(title)
                    .fontWeight(.semibold)
                Spacer()
                Image(systemName: "chevron.right")
            }
            Divider()
        }
    }
}

#Preview {
    ProfileOptionRowView(image: "gear", title: "Settings")
}
