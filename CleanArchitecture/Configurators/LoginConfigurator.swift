//
//  LoginConfigurator.swift
//  CleanArchitecture
//
//  Created by Dounia BELANNAB on 21/03/2018.
//  Copyright © 2018 Dounia BELANNAB. All rights reserved.
//

import Foundation
import UIKit
extension LoginViewController
{
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        router.passDataToNextScene(segue: segue)
    }
}

extension LoginInteractor: LoginViewControllerOutput
{
    func fetchResults(email: String?, password: String?) {
        
    }
    
    
}

extension LoginPresenter: LoginInteractorOutput
{
    
}

class LoginConfigurator {
    // MARK: - Object lifecycle
    
    static let sharedInstance = LoginConfigurator()
    
    private init() {}
    
    // MARK: - Configuration
    
    func configure(viewController: LoginViewController)
    {
        let router = LoginRouter()
        router.viewController = viewController
        
        let presenter = LoginPresenter()
        presenter.output = viewController
        
        let interactor = LoginInteractor()
        interactor.output = presenter
        
        viewController.interactor = interactor
        viewController.router = router
    }
    
}
