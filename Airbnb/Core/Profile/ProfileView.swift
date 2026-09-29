//
//  ProfileView.swift
//  Airbnb
//
//  Created by Ravi on 29/09/26.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {

        NavigationStack{
            VStack(){
                // Profile Header
                VStack(alignment: .leading,spacing: 32){

                        VStack(alignment: .leading,spacing: 8){
                            Text("Profile")
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                                Text("Log in to start planning your next trip.")
                        }

                        Button {
                            print("Login")
                        } label: {
                            Text("Login")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundStyle(.white)
                                .frame(width: 320,height: 45)
                                .background(.pink)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                        }

                        HStack{
                            Text("Don't have an account?")
                            Text("Sign up")
                                .fontWeight(.semibold)
                                .underline()
                        }
                        .font(.caption)


                }

                // Profile Row Options
                VStack(spacing: 20){
                    ProfileOptionRowView(image: "gear", title: "Settings")
                    ProfileOptionRowView(image: "gear", title: "Accessibility")
                    ProfileOptionRowView(image: "questionmark.circle", title: "Visit the help center.")
                }.padding(.vertical)
            }
            .padding()

        }
    }
}

#Preview {
    ProfileView()
}
