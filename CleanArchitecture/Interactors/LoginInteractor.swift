//
//  LoginInteractor.swift
//  CleanArchitecture
//
//  Created by Dounia BELANNAB on 19/03/2018.
//  Copyright (c) 2018 Dounia BELANNAB. All rights reserved.
//

import UIKit

protocol LoginInteractorOutput {
    func presentFetchResults(response: LoginModel.Fetch.Response)
}
protocol LoginInteractorInput
{
    func fetchItems(request: LoginModel.Fetch.Request)
}

class LoginInteractor: LoginInteractorInput {
    var output: LoginInteractorOutput!
         // MARK: - Business logic
    func fetchItems(request: LoginModel.Fetch.Request) {
        if request.email == nil || request.password == nil {
            return output.presentFetchResults(response: LoginModel.Fetch.Response(user: nil , state: true, error: "Empty fields"))
        }
        // we can add the email regex validation
        var worker = LoginWorker()
        worker.fetch(email: request.email, password: request.password, success: { (response) in
            self.output.presentFetchResults(response: LoginModel.Fetch.Response(user: response.user, state: true, error: nil))
        }) { (response) in
            self.output.presentFetchResults(response: LoginModel.Fetch.Response(user: nil, state: response.state, error: response.error))
        }
    }

}
