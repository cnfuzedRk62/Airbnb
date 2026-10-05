//
//  LoginView.swift
//  Airbnb
//
//  Created by Ravi on 05/10/26.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel(service: Service())

    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack{

            VStack{
                Spacer()
                Image("Airbnb")
                    .resizable()
                    .frame(width: 250,height: 250)
                // input fields
                VStack(spacing: 16){
                    TextField("Email", text: $viewModel.email)
                        .textInputAutocapitalization(.never)
                        .keyboardType(.emailAddress)
                        .modifier(textFieldViewModier())

                    SecureField("Password", text: $viewModel.password)
                        .modifier(textFieldViewModier())

                }
                .padding()
                // forgot password
                HStack{
                    Spacer()
                    Button {
                        print("pressed")
                    } label: {
                        Text("Forgot password?")
                            .font(.callout)
                            .fontWeight(.medium)
                    }
                }
                .padding()
                // Login button
                Button {
                    Task{
                        let login =  await viewModel.login()
                        if login{
                            dismiss()
                        }
                     }
                } label: {
                    Text("Login")
                        .foregroundStyle(.white)
                        .frame(width: 370,height: 50)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 12))

                }
                // Footer don't have account
                Spacer()
                VStack{
                    Divider()
                    HStack{
                        Text("Don't have an account?")
                            .foregroundStyle(.blue)
                        Text("Signup")
                            .fontWeight(.semibold)
                            .underline()
                            .foregroundStyle(.blue)
                            .onTapGesture {
                                print("Signup")

                            }
                    }.padding()
                }.padding(.bottom)

            }

            // loader
            VStack {
                if viewModel.isLoading {
                    ProgressView()
                        .tint(.gray)
                }
            }
        }
    }

  // viewModifier.
 struct textFieldViewModier : ViewModifier {
        func body(content: Content) -> some View {
            content
                .padding(.horizontal,16)
                .frame(height: 55)
                .background(Color(.systemGray6))
                .clipShape(RoundedRectangle(cornerRadius: 12))
        }
   }

}

#Preview {
    LoginView()
}
