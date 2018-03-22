//
//  LoginViewController.swift
//  CleanArchitecture
//
//  Created by Dounia BELANNAB on 19/03/2018.
//  Copyright (c) 2018 Dounia BELANNAB. All rights reserved.

import UIKit

protocol LoginViewControllerOutput {
    func fetchResults(email: String?, password: String?)
}

final class LoginViewController: UIViewController, LoginPresenterOutput {
    func successFetchedItems(viewModel: LoginModel.Fetch.ViewModel) {
        
    }
    
    func errorFetchingItems(viewModel: LoginModel.Fetch.ViewModel) {
        
    }
    
    var interactor: LoginViewControllerOutput!
    var router: LoginRouterInput!
    // MARK: - Outlets
    
    @IBOutlet weak var uiEmail: UITextField!
    
    @IBOutlet weak var uiPassword: UITextField!
    // MARK: - Object lifecycle

    override func awakeFromNib() {
        super.awakeFromNib()

        let router = LoginRouter()
        router.viewController = self

        let presenter = LoginPresenter()
        presenter.output = self

        let interactor = LoginInteractor()
        interactor.output = presenter

        self.interactor = interactor
        self.router = router
    }

    // MARK: - View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Event handling

    // MARK: - Display logic

}
