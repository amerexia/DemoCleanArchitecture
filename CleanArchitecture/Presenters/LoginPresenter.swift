//
//  LoginPresenter.swift
//  CleanArchitecture
//
//  Created by Dounia BELANNAB on 19/03/2018.
//  Copyright (c) 2018 Dounia BELANNAB. All rights reserved.
//

import UIKit

protocol LoginPresenterInput
{
    func presentFetchResults(response: LoginModel.Fetch.Response);
}

protocol LoginPresenterOutput: class
{
    func successFetchedItems(viewModel: LoginModel.Fetch.ViewModel)
    func errorFetchingItems(viewModel: LoginModel.Fetch.ViewModel)
}

class LoginPresenter: LoginPresenterInput {
    
    weak var output: LoginPresenterOutput!
    
    // MARK: - Presentation logic
    func presentFetchResults(response: LoginModel.Fetch.Response) {
        // NOTE: Format the response from the Interactor and pass the result back to the View Controller
        let viewModel = LoginModel.Fetch.ViewModel(firstName: response.user?.firstName, lastName: response.user?.lastName, error: response.error)
        
        if viewModel.error != nil {
            if let output = self.output {
                output.errorFetchingItems(viewModel: viewModel)
            }
        }else{
            if let output = self.output {
                output.successFetchedItems(viewModel: viewModel)
            }
        }
    }
}
