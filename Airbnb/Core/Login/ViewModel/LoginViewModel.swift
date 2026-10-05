//
//  LoginViewModel.swift
//  Airbnb
//
//  Created by Ravi on 05/10/26.
//

import Foundation
import Combine

class LoginViewModel : ObservableObject {

    @Published var email : String = ""
    @Published var password : String = ""
    @Published var isLoading: Bool = false
    @Published var error : String = ""
    let service : CommonProtocol

    init(service: CommonProtocol) {
        self.service = service
    }


    func login() async -> Bool{

        guard !email.isEmpty || !password.isEmpty else {
            return false
        }
        isLoading = true
        defer { isLoading = false }

        do{
            let result = try await service.login(email: email, password: password)
            if result{
                return true
            }else{
                self.error = "Wrong credentials"
                return false
            }
        }
        catch{
            print(error.localizedDescription)
            self.error = "Something went wrong"
        }
        return false
    }

}
